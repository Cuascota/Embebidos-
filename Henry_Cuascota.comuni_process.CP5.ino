#include <TimerOne.h>


String dato;
void setup() {
  Serial.begin(9600);
  Timer1.initialize(2000000);
  Timer1.attachInterrupt(conteo);
}

void loop() {

}

void conteo(){
  Serial.print(random(10,200));
  
  }
