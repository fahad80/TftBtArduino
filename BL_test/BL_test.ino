/*  Multple serial test with Software Serial

Author: Fahad Mirza (fahadmirza80@yahoo.com)
Last edited: 19th March, 2016

Application:
 Receives from the hardware serial, sends to software serial.
 Receives from software serial, sends to hardware serial.

 The circuit:
 * RX is digital pin 10 (connect to TX of BL device)
 * TX is digital pin 11 (connect to RX of BL device)
 */

#include <SoftwareSerial.h>

SoftwareSerial mySerial(10, 11); // RX, TX

void setup() 
{
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {;}    

  // set the data rate for the SoftwareSerial port
  mySerial.begin(9600);

}

void loop() 
{
  if (mySerial.available()) 
  {
    Serial.write(mySerial.read());
  }
  
  if (Serial.available()) 
  {
    mySerial.write(Serial.read());
  }
}
