
int prevState2 = LOW;
int prevState3 = LOW;
void setup() {
    pinMode(8, INPUT);
    pinMode(11, OUTPUT);
    pinMode(12, OUTPUT);
}

void loop() {
    delay(250);
    if (digitalRead(8) == HIGH && prevState2 == LOW) {
        digitalWrite(11, HIGH);
        digitalWrite(12, LOW);
    } else if (digitalRead(8) == LOW && prevState3 == HIGH) {
        digitalWrite(11, LOW);
        digitalWrite(12, HIGH);
    } else if (digitalRead(8) == LOW) {
        digitalWrite(11, LOW);
        digitalWrite(12, LOW);
    }
    prevState2 = digitalRead(8);
    prevState3 = digitalRead(8);
}