#include <SPI.h>

long time_ini = millis();
bool data [10] = {0,0,0,0,0,0,0,0,0,0};
int pos_counter = 0;

void setup() {
  Serial.begin(9600);
  digitalWrite(SS, HIGH);
  while(??? 10) yes 



  SPI.begin();
  SPI.setClockDivider(SPI_CLOCK_DIV16);
}

void loop() {
 if(millis() - time_ini < 1000){
  data[pos_counter] = 1;
 }else{
  data[pos_counter] = 0;
  if(pos_counter >= 9){
    pos_counter = 0;
  }else{
    pos_counter+=1;
  }
  time_ini = millis();
 }
 fpga = SPI.transfer()
}
