long time_ini = millis();
bool bit_out[10] = {0,0,0,0,0,1,1,0,1,1};
bool dataReceived = true; 
bool data [10] = {0,0,0,0,0,0,0,0,0,0}; 
int i = 0;
void setup() {
  Serial.begin(9600);
  for(int i = 10; i <= 13; i++){
    if(i == 12){
      pinMode(i, INPUT);
    }else{
      pinMode(i, OUTPUT);
    }
  }
  pinMode(7, OUTPUT);
  digitalWrite(10, HIGH);
  delay(1);
  digitalWrite(10, LOW);
  digitalWrite(13, LOW);
  
}

void loop() {
 if(bit_out[i] == 1){
  digitalWrite(7, HIGH);
 }else{
  digitalWrite(7, LOW);
 }

 delay(10);
 digitalWrite(13, HIGH);
 delay(100);
 digitalWrite(13, LOW);
 
 data[i] = digitalRead(12);
 Serial.print(data[i]);
 delay(100);
 if(i >= 9){
  i = 0;
  Serial.println("");
 }else{
  i++;
 }
}
