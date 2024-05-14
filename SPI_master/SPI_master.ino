long time_ini = millis();
bool bit_out[10] = {1,1,0,0,0,0,0,0,0,0};
bool dataReceived = true; 
bool data [10] = {0,0,0,0,0,0,0,0,0,0}; 
void setup() {
  Serial.begin(9600);
  for(int i = 10; i <= 13; i++){
    if(i == 12){
      pinMode(i, INPUT);
    }else{
      pinMode(i, OUTPUT);
    }
  }
  
  digitalWrite(10, HIGH);
}

void loop() {
 for (int i = 9; i >= 0; i--){
    Serial.print(bit_out[i]);
    digitalWrite(11, bit_out[i]);
    digitalWrite(13, HIGH);
    data[i] = digitalRead(12);
    if (data[i] == bit_out[i]) {
      dataReceived = false;
    }
    digitalWrite(13, LOW);
    
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
 
}