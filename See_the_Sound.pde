//Made by Hannah van Iterson. (C) Hannah van Iterson and TU/e 2017
//Copyrighted songs: 
//(C) Pirates of the Caribbean, Disney 
//(C) Coldplay
//(C) David Arnold & Michael Price

//With inspiration and information from: 
//https://www.acsu.buffalo.edu/~dmj32/Minim-2.2.0/documentation/frequency_method_asmidinote.html
//https://www.youtube.com/watch?v=wvJAgrUBF4w
//http://code.compartmental.net/minim/
//https://github.com/ddf/Minim/tree/master/examples/Basics
//http://code.compartmental.net/tools/minim/quickstart/
//https://en.wikipedia.org/wiki/Piano_key_frequencies

//With the help of: 
//Bastiaan Verhaar: bachelor student at the Department of Electrical Engeneering at the TU/e, 

//-------------------------------------------------------------------------------------------------------------------------------------
//The libaries
//Music by minim
  import ddf.minim.*;
  import ddf.minim.ugens.*; 

//-------------------------------------------------------------------------------------------------------------------------------------
//The classes and their objects
Minim minim;
Oscil tones;

AudioOutput out;
AudioPlayer music; 

//-------------------------------------------------------------------------------------------------------------------------------------
//the variables
int keyWidth=100, 
  keyHeight= 500, 
  keyColour= color (0, 200, 200), 
  clickColour= color (200, 200, 0), 
  topScreen=0,
  bSize= 50,
  bLoc = 1075;
  
float Bl = 0.6; //the black keys will be less wide
float[] skip = {2.70, 6.70};

Button button1, 
       button2, 
       button3,
       button4; 

//-------------------------------------------------------------------------------------------------------------------------------------
void setup () { 
  smooth();
  size (1200, 500);
  background (0);

  minim = new Minim(this);                              //new array
  out =minim.getLineOut(Minim.MONO);                    //get an audio output object

//Creating new buttons
  button1 = new Button ("red"  , bLoc, 75,  bSize, bSize);
  button2 = new Button ("green", bLoc, 175, bSize, bSize); 
  button3 = new Button ("blue" , bLoc, 275, bSize, bSize);
  button4 = new Button ("white", bLoc, 375, bSize, bSize);
}

//-------------------------------------------------------------------------------------------------------------------------------------
void draw () { 
  //THE PIANO
  //the white keys
  fill (255);
  pictureW ();
  
  //the black keys
  fill (0);
  pictureB ();
  
  //the buttons
  button1.drawButton();
  button2.drawButton();
  button3.drawButton();
  button4.drawButton();
}