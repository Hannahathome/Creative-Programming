String musicPlaying = "";          //identifier (string song name)
boolean playingMusic = false;      //identifier (boolean) 

//boolean to check if the mouse is on the button
boolean onButton (int xpos, int ypos, int widthB, int heightB) { 
  if (mouseX >= xpos && mouseX <= xpos+widthB && mouseY >= ypos && mouseY <= ypos+heightB) {
    return true;
  } else {
    return false;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------
class Button { 
  int xpos = 1075, 
    ypos, 
    heightB = 50, 
    widthB = 50;
  String buttoncolour;

  Button (String c, int x, int y, int h, int w) { 
    buttoncolour = c;
    xpos = x;
    ypos = y;
    heightB = h;
    widthB =w;
  }

  void drawButton () {   
    //this function checks whether the mouse is on the button(then it should light up) and if the music is playing (then it should light up aswell)     
    if (buttoncolour == "red" && onButton(bLoc, 75, bSize, bSize) || buttoncolour == "red" && musicPlaying == "Pirates" && music.isPlaying()) 
      fill (255, 0, 0);
    else if (buttoncolour =="red") 
      fill (200, 0, 0);

    else if (buttoncolour == "green" && onButton(bLoc, 175, bSize, bSize) || buttoncolour == "green" && musicPlaying == "Meme" && music.isPlaying()) 
      fill (0, 255, 0);
    else if (buttoncolour == "green") 
      fill (0, 200, 0);

    else if (buttoncolour == "blue" && onButton(bLoc, 275, bSize, bSize) || buttoncolour == "blue" && musicPlaying == "Sherlock" && music.isPlaying()) 
      fill (0, 0, 255);
    else if (buttoncolour == "blue") 
      fill (0, 0, 200);

    else if (buttoncolour == "white" && onButton(bLoc, 375, bSize, bSize) || buttoncolour == "white" && musicPlaying == "Midnight" && music.isPlaying()) 
      fill (255, 255, 255);
    else if (buttoncolour == "white") 
      fill (200, 200, 200);

    stroke(255);
    rect(xpos, ypos, heightB, widthB);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------
void mousePressed () {
  bSize = 50;
  //button1
  if (onButton(bLoc, 75, bSize, bSize) ) {
    if (playingMusic == true && musicPlaying == "Pirates") {                // checks if the song should be played or paused.
      musicPlaying = "";                                                    // resetting identifier (string song name)
      playingMusic = false;                                                 // resetting identifier (boolean)
      music.pause ();                                                       // stop the current music if you press a new button
    } else {
      if (playingMusic) music.pause ();                                     // stop the current music if you press a new button
      musicPlaying = "Pirates";                                             // setting identifier (string song name)
      music = minim.loadFile("Pirates of the Caribbean - Soundtrack 15 - He's a Pirate.mp3");    // load song
      music.play();                                                         // plays song
      playingMusic = true;                                                  // setting identifier (boolean)
    }
  }

  //button2
  else if (onButton(bLoc, 175, bSize, bSize)) {
    if (playingMusic == true && musicPlaying == "Meme") {       
      musicPlaying = "";                                    
      playingMusic = false;
      music.pause ();
    } else {
      if (playingMusic) music.pause ();
      musicPlaying = "Meme"; 
      music = minim.loadFile("Bag Raiders - Shooting Stars.mp3");
      music.play();
      playingMusic = true;
    }
  }

  //button3  
  else if (onButton(bLoc, 275, bSize, bSize)) {
    if (playingMusic == true && musicPlaying == "Sherlock") { 
      musicPlaying = "";
      playingMusic = false;
      music.pause ();
    } else {
      if (playingMusic) music.pause ();
      musicPlaying = "Sherlock";
      music = minim.loadFile("Sherlock Season 4 (The Final Problem) - Who You Really Are.mp3");
      music.play();
      playingMusic = true;
    }
  }

  //button4
  else if (onButton(bLoc, 375, bSize, bSize)) {
    if (playingMusic == true && musicPlaying == "Midnight") { 
      musicPlaying = "";
      playingMusic = false;
      music.pause ();
    } else {
      if (playingMusic) music.pause ();
      musicPlaying = "Midnight";
      music = minim.loadFile("Coldplay - Midnight.mp3");
      music.play();
      playingMusic = true;
    }
  }
} 