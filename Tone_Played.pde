void keyPressed () {
  switch(key) {                                          //if the the key 'x' is pressed play tone 'y' for 1 second
    //the white keys
  case 'a' : out.playNote(0, 1, "C3") ; selectedW (0); break;                    
  case 's' : out.playNote(0, 1, "D3") ; selectedW (1); break;
  case 'd' : out.playNote(0, 1, "E3") ; selectedW (2); break;
  case 'f' : out.playNote(0, 1, "F3") ; selectedW (3); break;
  case 'g' : out.playNote(0, 1, "G3") ; selectedW (4); break;
  case 'h' : out.playNote(0, 1, "A3") ; selectedW (5); break;
  case 'j' : out.playNote(0, 1, "B3") ; selectedW (6); break; 
  case 'k' : out.playNote(0, 1, "C4") ; selectedW (7); break; 
  case 'l' : out.playNote(0, 1, "D4") ; selectedW (8); break; 
  case ';' : out.playNote(0, 1, "E4") ; selectedW (9); break;

    //the black keys
  case 'w' : out.playNote(0, 1, "C#3") ; selectedB (0.70); break; 
  case 'e' : out.playNote(0, 1, "D#3") ; selectedB (1.70); break; 
  case 't' : out.playNote(0, 1, "F#3") ; selectedB (3.70); break; 
  case 'y' : out.playNote(0, 1, "G#3") ; selectedB (4.70); break; 
  case 'u' : out.playNote(0, 1, "A#3") ; selectedB (5.70); break; 
  case 'o' : out.playNote(0, 1, "C#4") ; selectedB (7.70); break; 
  case 'p' : out.playNote(0, 1, "D#4") ; selectedB (8.70); break; 
  default  : 
    out.playNote(0); 
    break;
    
//-------------------------------------------------------------------------------------------------------------------------------------
//Hidden feature
      //the white keys
  case 'A' : out.playNote(0, 1, 55) ; selectedW (0); break;                    
  case 'S' : out.playNote(0, 1, 65) ; selectedW (1); break;
  case 'D' : out.playNote(0, 1, 75) ; selectedW (2); break;
  case 'F' : out.playNote(0, 1, 85) ; selectedW (3); break;
  case 'G' : out.playNote(0, 1, 95) ; selectedW (4); break;
  case 'H' : out.playNote(0, 1, 105) ; selectedW (5); break;
  case 'J' : out.playNote(0, 1, 115) ; selectedW (6); break; 
  case 'K' : out.playNote(0, 1, 125) ; selectedW (7); break; 
  case 'L' : out.playNote(0, 1, 135) ; selectedW (8); break; 

    //the black keys
  case 'W' : out.playNote(0, 1, 60) ; selectedB (0.70); break; 
  case 'E' : out.playNote(0, 1, 70) ; selectedB (1.70); break; 
  case 'T' : out.playNote(0, 1, 90) ; selectedB (3.70); break; 
  case 'Y' : out.playNote(0, 1, 100) ; selectedB (4.70); break; 
  case 'U' : out.playNote(0, 1, 110) ; selectedB (5.70); break; 
  case 'O' : out.playNote(0, 1, 130) ; selectedB (7.70); break; 
  case 'P' : out.playNote(0, 1, 140) ; selectedB (8.70); break; 
  }
}