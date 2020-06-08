void DrawWhiteKeys () {
  stroke (0);
  for ( int i =0; i<10; i++) { 
    rect ((keyWidth*i), topScreen, keyWidth, keyHeight);
  }
}

void DrawBlackKeys () {
  stroke (0); 
  for (float i =0.70; i<9; i+=1) { 
    //the boolean is to make sure the 3rd and 6th piano key are skipped, just like an actual piano
    boolean valid= true;                 
    for (float j : skip) {                                //variable j for all the values in 'skip'
      if (i == j) {
        valid= false; 
        break;
      }
    }                 // if the value i is equal to j then the value should be skipped, so break the loop
    if (valid)                                        //otherwise contine
      rect ((keyWidth*i), topScreen, Bl*keyWidth, (0.5*keyHeight));
  }
}

void pictureB () { 
  DrawBlackKeys ();
}

void pictureW () {
  DrawWhiteKeys ();
}

//-------------------------------------------------------------------------------------------------------------------------------------
//The keys change colour when pressed 

//the white keys
void selectedW (int index) {                             
  fill(0, 200, 200);  
  rect ((keyWidth*index), topScreen, keyWidth, keyHeight);

  //making sure the blue flash doesnt go over the black keys by drawing them again
  fill(0);
  pictureB ();
}

//the black keys
void selectedB (float index) {                           
  fill(0, 200, 200); 
  for (float i =0.70; i<9; i+=1) { 
    //the boolean is to make sure the 3rd and 6th piano key are skipped, just like an actual piano
    boolean valid= true;
    for (float j : skip) {                        //variable j for all the values in 'skip'
      if (i == j) {
        valid= false; 
        break;
      }
    }         // if the value i is equal to j then the value should be skipped, so break the loop
    if (valid)                                  //otherwise contine
      rect ((keyWidth*index), topScreen, Bl*keyWidth, (0.5*keyHeight));
  }
}