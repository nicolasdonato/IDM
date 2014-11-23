boolean inException = false;
boolean chgd = true;
const int componentsNumber = 5;
int components[][4] = {
{1,4,1,500},
{1,5,1,500},
{0,9,0,LOW},
{0,10,0,LOW},
{0,11,1,LOW},
{0,12,0,LOW}};
int nwStates[componentsNumber];
int code[][3] = {{5,925,2},{4,100,1},{4,925,2}};
boolean canPush = false;
int codeErrorNb = 0;
int codeSize = 3;
int currentHist[][2] = {{-1,-1},
{-1,-1},
{-1,-1}};

void setup() {
  for(int i = 0;i < componentsNumber;i++){
    if(components[i][0] == 0){
      if(components[i][2] == 1){
        pinMode(components[i][1],INPUT);
      } else {
        pinMode(components[i][1],OUTPUT);
      }
      digitalWrite(components[i][1], components[i][3]);
    } else {
    analogWrite(components[i][1],components[i][3]);
    }
  }
}

boolean getStates(){
  boolean hasChanged = false;
  for(int i = 0;i < componentsNumber;i++){
    int state = -1;
    if(components[i][2] == 1){
      if(components[i][0] == 0){
        state = digitalRead(components[i][1]);
      } else {
        state = analogRead(components[i][1]);
      }
    }
    if(state != -1 && components[i][3] != state){
      hasChanged = true;
      components[i][3] = state;
    }
    nwStates[i] = components[i][3];
  }
  return hasChanged;
}

boolean verifyGuard(int nb,int compStates[][3]){
  for(int i = 0; i < componentsNumber;i++){
    for(int j = 0; j < nb;j++){
      if(components[i][1] == compStates[j][0]){
        if(compStates[j][2] == 2){ // superieur strict
          if(components[i][3] <= compStates[j][1]){
            return false;
          }
        } else if(compStates[j][2] == 1){ // inferieur strict
          if(components[i][3] >= compStates[j][1]){
            return false;
          }
        } else {
          if(components[i][3] != compStates[j][1]){
            return false;
          }
        }
      }
    }
  }
  return true;
}

void computeNewState(boolean doIt, int nbact, int actions[][2]){
  if(doIt){
    for(int i = 0; i < componentsNumber;i++){
      for(int j = 0; j < nbact;j++){
        if(components[i][1] == actions [j][0]){
          nwStates[i] = actions[j][1];
        }
      }
    }
  }
}

boolean applyAction(){
  boolean hasChanged = false;
  for(int i = 0;i < componentsNumber;i++){ 
    if(components[i][0] == 0){
      digitalWrite(components[i][1],nwStates[i]);
    } else {
      analogWrite(components[i][1], nwStates[i]);
    }
    if(components[i][3] != nwStates[i]){
      hasChanged = true;
    }
    components[i][3] = nwStates[i];
  }
  return hasChanged;
}

void loop(){
  delay(200);
  boolean chgd2 = getStates();
  exception();
  if(!inException && (chgd || chgd2)){
    chgd = false;
    treatGuards();
    chgd = applyAction();
  }
}

void treatGuards(){
  treatHistory((int[][3]){{11,HIGH,0}},1,(int[][3]){{0,0,0}},1);
  treatHistory((int[][3]){{5,100,1},{-1,1,0}},2,(int[][3]){{-1,5,0},{-2,0,0}},2);
  treatHistory((int[][3]){{5,925,2},{-1,1,0}},2,(int[][3]){{-1,5,0},{-2,0,0}},2);
  treatHistory((int[][3]){{4,100,1},{-1,1,0}},2,(int[][3]){{-1,4,0},{-2,0,0}},2);
  treatHistory((int[][3]){{4,925,2},{-1,1,0}},2,(int[][3]){{-1,4,0},{-2,0,0}},2);
  treatHistory((int[][3]){{4,450,2},{4,650,1},{5,450,2},{5,650,1}},4,(int[][3]){{-2,1,0}},1);
}

int currentError = -1;
void exception(){
  if(!inException){
  }
  if(inException){
    for(int e = 0; e < currentError*2;e++){
      delay(200);
      if(e % 2 == 0){
        digitalWrite(12,HIGH);
      } else {
        digitalWrite(12,LOW);
      }
    }
    delay(250);
  }
}

void treatHistory(int compStates[][3], int nbcond, int actions[][3], int nbactions){
  boolean validH = true;
  for(int i = 0; i < nbcond; i++){
    if(compStates[i][0] == -1){ // historicalCondition
      if(compStates[i][1] == 0){
        if(canPush){
          validH = false;
        }
      } else {
        if(!canPush){
          validH = false;
        }
      }
    } else {
      if(!verifyGuard(1,(int[][3]){{compStates[i][0],compStates[i][1],compStates[i][2]}})){
        validH = false;
      }
    }
  }
  if(validH){
    for(int i = 0; i < nbactions; i++){
      if(actions[i][0] == 0){ // validate
        verifyCode();
      } else if(actions[i][0] == -1){ // push
        push(actions[i][1]);
      } else if(actions[i][0] == -2){ // activator
        if(actions[i][1] == 0){
          canPush = false;
        } else {
          canPush = true;
        }
      } else { // numerical/analogical
        computeNewState(true,1,(int[][2]){{actions[i][1],actions[i][2]}});
      }
    }
  }
}

void push(int pin){
  if(canPush){
    int number = -1;
    for(int i = 0; i < componentsNumber;i++){
      if(components[i][1] == pin){
        number = components[i][3];
      }
    }
    boolean pushed = false;
    for(int i = 0; i < codeSize;i++){
      if(currentHist[i][0] == -1){
        currentHist[i][0] = pin;
        currentHist[i][1] = number;
        pushed = true;
        break;
      }
    }
    if(!pushed){
      for(int i = 0;i < codeSize-1;i++){
        currentHist[i][0] = currentHist[i+1][0];
        currentHist[i][1] = currentHist[i+1][1];
      }
      currentHist[codeSize][0] = pin;
      currentHist[codeSize][1] = number;
    }
    canPush = false;
  }
}

void verifyCode(){
  boolean testc = true;
  for(int i = 0; i < codeSize;i++){
    if(currentHist[i][0] == code[i][0]){
      if(code[i][3] == 1){ // inferieur strict
        if(currentHist[i][1] >= code[i][2]){ 
          testc = false;
          break;
        }
      } else if(code[i][3] == 2){ // superieur strict
        if(currentHist[i][1] <= code[i][2]){ 
          testc = false;
          break;
        }
      } else {
        if(currentHist[i][1] != code[i][2]){ 
          testc = false;
          break;
        }
      }
    } else {
      testc = false;
      break;
    }
  }
  if(!testc){
    codeErrorNb++;
    if(codeErrorNb >= 3){
      inException = true;
      currentError = 3;
    } else {
      for(int i = 0; i < codeErrorNb*2;i++){
        delay(200);
        if(i % 2 != 0){
          digitalWrite(10,HIGH);
        } else {
          digitalWrite(10,LOW);
        }
      }
    }
  } else {
    digitalWrite(10,LOW);
    digitalWrite(9,HIGH);
    inException = true;
    currentError = 0;
  }
}
