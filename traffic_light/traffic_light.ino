

int green= 2;
int yellow=3;
int red=4;
void setup() {
  pinMode(green, OUTPUT);
  pinMode(yellow,OUTPUT);
  pinMode(red,OUTPUT);
}

void loop() {
  digitalWrite(green, HIGH);   
  delay(2000);                     
  digitalWrite(green, LOW);
    
  digitalWrite(yellow,HIGH);  
  delay(2000);
  digitalWrite(yellow,LOW);
  
  digitalWrite(red,HIGH);
  delay(5000);
  digitalWrite(red,LOW);
  
  delay(1000);
}
                     
