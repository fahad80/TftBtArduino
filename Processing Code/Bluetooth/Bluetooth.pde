/*

Author: Fahad Mirza (fahadmirza80@yahoo.com)
Last edited: 19th March, 2016

Application:
    Generates a 240x320 window (the size of a TFT LCD [NHD-2.4-240320CF-CTXI])
    When left mouse button is pressed inside the window it generates white points
    and send that coordinate (X and Y value of mouse pointer) through a COM port.
    
Bluetooth Module: HC-06
COM port: 40
Baud: 9600

*/

import processing.serial.*;

Serial myPort;  // The serial port
String myString = null;


void setup() 
{
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, "COM40", 9600);   // COM40 was my Bluetooth'c COM port
  myPort.clear();
  
  size(240, 320);
  stroke(255,255,255);
  colorMode(RGB, 255, 255, 255);
  background(0);
}


void draw() 
{
  if (mousePressed) 
  {
    int x,y;
    x = mouseX; y= mouseY;
    if( (0 <= x) && (x< 240) && (0 <= y) && (y < 320) )
    {
      point(x,y);
      myString = x + "," + y + "\n";
      myPort.write(myString);
      myString = null;
    }
  }
}