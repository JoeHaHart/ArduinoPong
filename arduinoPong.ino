Arduino Code:
int plr1Value = 0;
int plr2Value = 0;
//#include “pitches.h”
void setup() {
  Serial.begin(9600);
}
void loop() {
  // plr1Value = ;
  plr2Value = analogRead(A0);
  plr1Value = analogRead(A1);
  int send1Value = map(plr2Value, 0, 1023, 0, 255);
  int send2Value = map(plr1Value, 0, 1023, 0, 255);
  Serial.write(send1Value);
  Serial.write(send2Value);
  int input = Serial.read();
  if (input == 5) {
    tone(8, 1000, 20);
  }
  if (input == 10) {
    tone(8, 500, 100);
  }
  delay(50);
}
