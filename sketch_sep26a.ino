
void setup() {
  pinMode(12, OUTPUT); // LED
  pinMode(11, OUTPUT); // BUZZ
  pinMode(8, INPUT); // BUTTON
}

int state = 0;
boolean last = true;

void loop(){
  stateSwitcher();
  stateTreatment();
}

void stateSwitcher(){
  if( digitalRead(8) == HIGH){
    if(last){
      state = (state + 1) % 3; 
    }
    last = false;
  } else {
    last = true;
  }
}

void stateTreatment(){
  if(state == 0){
    digitalWrite(11,LOW);digitalWrite(12, LOW);
  } else if(state == 1) {
    digitalWrite(11,HIGH);digitalWrite(12, LOW);
  } else {
    digitalWrite(11,LOW);digitalWrite(12, HIGH);
  }
}
