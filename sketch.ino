boolean inException = false;
boolean chgd = true;
const int componentsNumber = 3;
int components[][4] = {
{0,9,1,LOW},
{0,10,0,LOW},
{0,11,0,LOW},
{0,12,0,LOW}};
int nwStates[componentsNumber];

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
  computeNewState(verifyGuard(3,(int[][3]){{9,HIGH,0},{10,LOW,0},{11,LOW,0}}),1,(int[][2]){{10,HIGH}});
  computeNewState(verifyGuard(3,(int[][3]){{9,HIGH,0},{10,HIGH,0},{11,LOW,0}}),2,(int[][2]){{11,HIGH},{10,LOW}});
  computeNewState(verifyGuard(3,(int[][3]){{9,HIGH,0},{10,LOW,0},{11,HIGH,0}}),1,(int[][2]){{11,LOW}});
}

int currentError = -1;
int countBlink = 0;
void exception(){
  if(!inException){
  }
}

