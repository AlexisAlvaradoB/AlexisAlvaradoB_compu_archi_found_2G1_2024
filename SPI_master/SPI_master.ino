#include <SPI.h>

long x = millis();

void setup() {
  Serial.begin(4600);
  digitalWrite(SS, HIGH);
  SPI.begin();
  SPI.setClockDivider(SPI_CLOCK_DIV16);
}

void loop() {
  
  while(millis()-x < 1000){
    digitalWrite(SS, LOW);
    digitalWrite(7, HIGH);
  }
  x = millis();


}
