// A PIMMINK Project
//
// 2016 4 April
//
// www.pimmink.nl
// twitter.com/pimminkofficial
//
//
// ENJOY!

import processing.serial.*;

Serial myPort;        // The serial port
float inByte = 0;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage background;


void setup () {
  // set the window size:
  size(384, 512);  // size always goes first!

  // List all the available serial ports
  // if using Processing 2.1 or later, use Serial.printArray()
  println(Serial.list());

  // I know that the first port in the serial list on my mac
  // is always my  Arduino, so I open Serial.list()[0].
  // Open whatever port is the one you're using with your Arduino.
  myPort = new Serial(this, Serial.list()[0], 9600);

  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil('\n');

  // set inital background:
  background(0);
  
  img1 = loadImage("1.jpg");
  img2 = loadImage("2.jpg");
  img3 = loadImage("3.jpg");
  img4 = loadImage("4.jpg");
  img5 = loadImage("5.jpg");
  img6 = loadImage("6.jpg");
  img7 = loadImage("7.jpg");
  img8 = loadImage("8.jpg");
  img9 = loadImage("9.jpg");
  background = img1;
  
}

void draw () {
  // image opzetten
image(background, 0,0, 384, 512);

  
}


void serialEvent (Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // convert to an int and map to the screen height:
    inByte = float(inString);
    println(inByte);
    if(inByte >= 0  && inByte < 200){
      // change image
      println("1");
      background = img1;
    }
    if(inByte >= 200  && inByte < 300){
      // change image
      println("2");
      background = img2;
    }
    if(inByte >= 300  && inByte < 400){
      // change image
      println("3");
      background = img3;
    }
    if(inByte >= 400  && inByte < 500){
      // change image
      println("4");
      background = img4;
    }
    if(inByte >= 500  && inByte < 600){
      // change image
      println("5");
      background = img5;
    }
    if(inByte >= 600  && inByte < 700){
      // change image
      println("6");
      background = img6;

    }
    if(inByte >= 700  && inByte < 800){
      // change image
      println("7");
      background = img7;

    }
    if(inByte >= 800  && inByte < 900){
      // change image
      println("8");
      background = img8;
      
    }
        if(inByte >= 900  && inByte < 1023){
      // change image
      println("9");
            background = img9;

    }

  }
}