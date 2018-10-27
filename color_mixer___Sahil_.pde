/*
    All comments labeled "GIVEN" do not need to be changed.
    
    Some comments are numbered - these are comments YOU should finish.
    Read and make sense of the code or code block below the number.
    Then write a comment on that line that summarizes what the code does.
    
    The bulk of the code you write will take place in the "MouseClicked"
    function located at the bottom of the code.
*/

// GIVEN: Color values for red, green and blue
float rVal = 0;
float gVal = 0;
float bVal = 0;

// GIVEN: Variable for the value rVal, gVal, and bVal will change by
// Change this value as you see fit.
float changeAmount = 1;


boolean fillFlag = false;
//Helps in changing the color of the black screen



// GIVEN: Everything in the setup is complete
void setup(){
  // #1
  size(600, 300);  
  // Helps to set the size of the screen
  
  
 
  // #2
  fill(255, 0, 0);
  quad(0, 0, width/6, 0, width/6, height, 0, height);
  textSize(32);
  textAlign(CENTER);
  fill(0, 0, 0);
  text("+", width/12, height/4);
  text("-", width/12, height/4 * 3);
  // Helps to set the red boxes of rectangular shape with + and - as the text that are aligned to the center and act as its buttons.
 
  // #3
  fill(0, 255, 0);
  quad(width/6, 0, width/6, height, width/3, height, width/3, 0);
  fill(0, 0, 0);
  text("+", width/12 * 3, height/4);
  text("-", width/12 * 3, height/4 * 3);
  // Helps to set the blue boxes of rectangular shape with + and - as the text that act as its buttons.
 
  // #4
  fill(0, 0, 255);
  quad(width/3, 0, width/2, 0, width/2, height, width/3, height);
  fill(0, 0, 0);
  text("+", width/12 * 5, height/4);
  text("-", width/12 * 5, height/4 * 3);
 //Helps to set the green boxes of rectangular shape with + and - as the text that act as its buttons.

  
  // #5
  line(0, height/2, width/2, height/2);
  //Helps to create a line to divide each recatangular boxes into halves,such that they get divided into + and - boxes.
  
  fill(0, 0, 0);
  quad(width/2, 0, width, 0, width, height/2, width/2, height/2);
  //Helps to create a black box around the top right corner that changes color according to rgb value
  fill(255, 255, 255);
  quad(width/2, height/2, width, height/2, width, height, width/2, height);
  //Helps to create a white box to act as a screen for drawing
  
  
 
}

void draw(){
  // GIVEN: Creates rectangle that shows the color change as the user clicks
  
  //This is use to draw line of color selected by the user
  if (mousePressed == true) {
    stroke(rVal, gVal, bVal);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  //Helps to draw strokes on the white screen
  
  if(fillFlag)
  {
    fill(rVal, gVal, bVal);
    quad(width/2, 0, width, 0, width, height/2, width/2, height/2);
  }
  // Helps to change the color of the black screen in accordance of the rgb values
}




void mouseClicked(){

  // Add in conditional statements here that will change
  // rVal, gVal, and bVal depending on where the user clicks
  // Hint: Look at documentation for mouseY and mouseX
 
  // YOUR CODE GOES HERE://if red + and - are clicked
  
//Helps in increasing values if + button of red box is pressed.
  if (mouseX <= 100 && mouseX >= 0 && mouseY >= 0 && mouseY <= 150){
    rVal += 1;
    overflowTest();
  

  }
  if (mouseX <= 100 && mouseX >= 0 && mouseY >= 151 && mouseY <= 300){
    rVal -= 1;
    overflowTest();
 //Helps in decreasing values if - button of red box is pressed.


  }

 //Helps in increasing values if + button of green box is pressed.
  if (mouseX <= 200 && mouseX >= 101 && mouseY >= 0 && mouseY <= 150){
    gVal += 1;
    overflowTest();

  }
  if (mouseX <= 200 && mouseX >= 101 && mouseY >= 151 && mouseY <= 300){
    gVal -= 1;
    overflowTest();
//Helps in decreasing values if - button of green box is pressed.


  }

  
//Helps in increasing values if + button of blue box is pressed.
  if (mouseX <= 300 && mouseX >= 201 && mouseY >= 0 && mouseY <= 150){
    bVal += 1;
    overflowTest();

  }
  if (mouseX <= 300 && mouseX >= 201 && mouseY >= 151 && mouseY <= 300){
    bVal -= 1;
    overflowTest();
//Helps in decreasing values if - button of blue box is pressed.

  }

 
 
  //Adds a "counter" in the middle of each set of buttons to keep track of the rgb values
  fill(255,255,255);
  quad (20,130,80,130,80,170,20,170);
  fill(0,0,0);
  text((int)rVal,50,160);
 
  fill(255,255,255);
  quad(179,130,120,130,120,170,179,170);
  fill(0,0,0);
  text((int)gVal,150,160);
 
  fill(255,255,255);
  quad(220,130,280,130,280,170,220,170);
  fill(0,0,0);
  text((int)bVal,250,160);
  
  
  //Flag for setting the color of the rectangle
  fillFlag = true;
 

  // GIVEN: This will "print" your variable values to the console below
  // Leave this code as is
  println("rVal = " + rVal);
  println("gVal = " + gVal);
  println("bVal = " + bVal + "\n");
 
}

//loops the RGB values back to 0 or 255 if going over
void overflowTest(){
  if (rVal > 255){
    rVal = rVal - 256;
  } else if (rVal <0){
    rVal = rVal + 256;
  }
  if (gVal > 255){
    gVal = gVal - 256;
  } else if (gVal <0){
    gVal = gVal + 256;
  }
  if (bVal > 255){
    bVal = bVal - 256;
  } else if (bVal <0){
    bVal = bVal + 256;
  }
}




    
    
    
    
    
    
