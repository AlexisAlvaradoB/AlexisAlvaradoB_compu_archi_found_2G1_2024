#include <SPI.h>

long time_ini = millis();
bool bit;
bool dataReceived = true; 
bool data [10] = {0,0,0,0,0,0,0,0,0,0}; 

void setup() {
  Serial.begin(9600);
  digitalWrite(SS, HIGH);/*
  for(int i = 0; i <= 9; i++){
    pinMode(i, INPUT);
  }*/
  SPI.begin();
  SPI.setClockDivider(SPI_CLOCK_DIV16);
}
void loop() {
 for (int i = 9; i >= 0; i--){
    if(i < 3){
      bit = 1;
    }else{
      bit = 0;
    }
    Serial.print(bit);
    SPI.transfer(bit);
    data[i] = digitalRead(12);
    if (data[i] == bit) {
      dataReceived = false;
    }
 }
 Serial.print(" "); 
  for(int i = 9; i >= 0; i--){
    Serial.print(data[i]);
  }
  Serial.print(" ");
 if (dataReceived){
  Serial.println("Data received"); 
 } else {
  Serial.println(" Failed sending data"); 
 }
 dataReceived = true; 
 delay(1000); 
}
