# README #

Wireless digital signature pad

A TFT display with touch screen was used to as signature pad. Anything draw on the display wireless-ly transferred to a PC software, written in processing and recreate the image there. The image can be saved from the software for future use. 

## Application ##

### Metro ###
Program for writing to Newhaven fill_displaylay 2.4" TFT with ST7789S controller with Adafruit Metro. The code uses 18 bits for each pixels i.e. 6bits for each color (R-G-B). The code will read the X and Y values from Bluetooth module and draw the points on the TFT.

  Hardware:
  I used Adafruit's Uno replica (called Metro) because they have on board 3.3V 
  regulator. You can switch between 3.3V and 5v logic level for ATmega328.
  TFT LCD requires 3.3V logic.

  Alternatively, you can replace the 5v regulator on the Uno board, but then
  the board needs to be powered from DC jack.



### Processing ###

Generates a 240x320 window (the size of a TFT LCD [NHD-2.4-240320CF-CTXI]) When left mouse button is pressed inside the window it generates white points and send that coordinate (X and Y value of mouse pointer) through a COM port.