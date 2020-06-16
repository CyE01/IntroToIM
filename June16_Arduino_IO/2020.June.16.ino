void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  PinMode(6, OUTPUT);
  PinMode(7, OUTPUT);
  PinMode(A0, INPUT);
  PinMode (8, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

  int YellowLight = analogRead(A0);
  int GreenLight = digitalRead (8);

  delay(1);

  //When the analog input is turned on, yellow light lights up, otherwise the greenlight will be on.
  if (YellowLight == 1) {
    analogWrite(A0, 100);
  } else digitalWrite (8, 100);

  //When the digital input is turned on, both yellow and green lights light up.
  if (GreenLight == 1) {
    digitalWrite (8, 100);
    analogWrite(A0, 100);
  }

}
