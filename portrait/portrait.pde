void setup() {  
  // setup() runs once
  //Setting size to 500 x 500
  size(500, 500);
  frameRate(30);
  //Setting background to gray 
  background(52);
  stroke(253, 241, 212);
  //Fill rect with tan color
  fill(253, 241, 212);
  rect(150,150,200,200);
  //Draw hair and face
  drawHair();
  drawFace();
}
//Used for debugging where a point was on the screen
void mouseClicked() {
  println(mouseX,mouseY);
} 
void drawHair(){
  //Draw lines for hair on top of head
  //Set height of hair intially 
  int y = 150;
  int yLowerLimit = 110;
  //y value for line in pixels
  //Iteration to give growing effect in hair
  for (int j = 150;j<178;j=j+3){
    stroke(111, 88, 63);
    if(y<yLowerLimit){
      y=yLowerLimit;
    }else{
      y=y-5;
      if(y<yLowerLimit){
       y=yLowerLimit; 
      }
    }
    line(j,150,j,y);
  }
  //Lines for the rest of the hair
  for (int i = 175; i < 351; i = i+3) {
    stroke(111, 88, 63);
    line(i, 150, i, yLowerLimit);
  }
}
void draw(){
  //Draw loop to run every frame
  //Set initial position of pupils
  int leftX = 200;
  int rightX = 300;
  int y = 215;
  
  //Set eye size globaly 
  int eyeWidth =40;
  int eyeHeight = 40;
  //Get the position of the mouse to move the pupils around
  if(mouseX<250&&mouseY>150&&mouseY<350){
    leftX = 185;
    rightX = 285;
  }else if(mouseX>=250&&mouseY>150&&mouseY<350){
    leftX = 215;
    rightX = 315;
  }else if(mouseY<150){
    y = 200;
  }else if(mouseY>250){
    y = 230;
  }

  //Left Eye
  fill(255);
  stroke(255);
  ellipse(200,215,eyeWidth,eyeHeight);
  fill(111, 88, 63);
  ellipse(leftX,y,10,10);
  
  //Right Eye
  fill(255);
  stroke(255);
  ellipse(300,215,eyeWidth,eyeHeight);
  fill(111, 88, 63);
  ellipse(rightX,y,10,10); 
  
  
}
void drawFace(){
  //Draw facial features on the portrait
  //Mouth
  fill(0);
  stroke(0);
  rect(225,285,50,20);
  //Teeth
  fill(255);
  rect(225,285,50,5);
  rect(225,300,50,5);
  
  //Nose
  stroke(111, 88, 63);
  fill(253, 241, 212);
  //fill(0);
  //triangle(30, 75, 58, 20, 86, 75);
  triangle(250,240,240,270,260,270);
  
  //Beard
  fill(111, 88, 63);
  //Moustache
  rect(215,275,70,10);
  rect(215,275,10,75);
  rect(275,275,10,75);
  //Sides
  rect(150,250,10,100);
  rect(340,250,10,100);
  rect(160,300,60,20);
  rect(280,300,60,20);
  //Side Triangles
  triangle(160,260,160,300,225,300);
  triangle(340,260,340,300,275,300);
  //Bottom
  rect(150,315,200,35);
  
  //Ears
  stroke(253, 241, 212);
  fill(253, 241, 212);
  rect(140,215,10,30);
  rect(350,215,10,30);
}
