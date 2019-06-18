/**
 @file accelerometer.ino
 @brief This is an Example for the FaBo 3AXIS I2C Brick.

   http://fabo.io/201.html

   Released under APACHE LICENSE, VERSION 2.0

   http://www.apache.org/licenses/

 @author FaBo<info@fabo.io>
*/

#include <Wire.h>
#include <FaBo3Axis_ADXL345.h>

FaBo3Axis fabo3axis;

void setup()
{
  Serial.begin(9600); // シリアルの開始デバック用
  Serial.println("X, Y, Z");
  
 // Serial.println("Checking I2C device...");
  
  //if(fabo3axis.searchDevice()){
   // Serial.println("I am ADXL345");
  //}
  //Serial.println("Init...");
  //fabo3axis.configuration();
 // fabo3axis.powerOn();
}

void loop() {
  int x;
  int y;
  int z;
  
  
  fabo3axis.readXYZ(&x,&y,&z);
  float X = x;
  float Y = y;
  float Z = z;

Serial.print(X);
  Serial.print(",");
  Serial.print(Y);
  Serial.print(",");
  Serial.println(Z);

  
 
  delay(1000);
}
