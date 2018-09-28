//Student Number:20075666
//Name;Dylan Morrissey 
int xCoordinate , yCoordinate,xCoordinate2, yCoordinate2;//starting x and y values of the ellipse
float xSpeed, ySpeed ,speedtwoY, speedtwoX; //The  speed for the X and Y coordinats 


void setup() 
{
  fullScreen(); //Setting the size of the window to fullscreen
  textSize(24); //Sets the size of the text
  fill(0); //fills the text black
  text("Project by Dylan Morrissey", width/2+345, height/2-400);
  line(width/2+340, height/2-390, width/2+660, height/2-390);
    

  xCoordinate= width/2; // Sets the size of the first xCoordiante and yCoordiantes to half the width so if the screen size is changed it wont impact and also so we can add a speed to it to make it move 
  yCoordinate=height/2; 
  xCoordinate2=width/2; // These x and y coordinates are for the second ellipse so that one can move in the opposite direction 
  yCoordinate2=height/2; 
  xSpeed=2;// This is setting the speed at which the ellipse will move in the x plane and y plane 
  ySpeed=2; 
  speedtwoY=-2;
  speedtwoX=-2; 
  
}

void draw() //The uses of the methods just clean this up and made it easier to navigate and allows one line of code to be called instead of way more
{
  drawEllipse();  //This method is called below and is used to draw the ellipse 
  
  drawStar(); //This method is called below and is used to draw the star seen in the middle of the screen
  
  moveEllipse(); //This method contains the code which start the ellipse off moveing 
  
  bounceEllipse(); // This methond contains the code below that causes the ellipse to change direction
  
  rainEllipse(); //This method is called below and causes the yCoordinate of the a new Ellipse to stop or go if x<mouse
  
}

void drawEllipse() //This method draws the two ellipses 
{
   noStroke();
   ellipse(xCoordinate,yCoordinate,100,100);
   ellipse(xCoordinate2,yCoordinate2,100,100);
}

void rainEllipse()
{
  int x=0;
  while (x<mouseX)
  {
    stroke(random(255),random(255),random(255));
    ellipse(x,yCoordinate,100,100);
    x=x+112;
  }
}

void drawStar() //This method draws the star in the middle of the screen
{
  beginShape(); //As there is no set shape for a start we have to make out own out of vertexs
  vertex(width/2, height/2-50);
  vertex(width/2+14, height/2-20);
  vertex(width/2+47, height/2-15);
  vertex(width/2+23, height/2+7);
  vertex(width/2+29, height/2+40);
  vertex(width/2, height/2+25);
  vertex(width/2-29, height/2+40);
  vertex(width/2-23, height/2+7);
  vertex(width/2-47, height/2-15);
  vertex(width/2-14, height/2-20);
  endShape(CLOSE);
}

void moveEllipse()
{
  
  xCoordinate+=xSpeed; //this is adding the xSpeed to the xCoordiante to make it move 
  yCoordinate+=ySpeed; //this is adding the ySpeed to the yCoordiante to make it move 
  xCoordinate2+=speedtwoX;
  yCoordinate2+=speedtwoY;
}

void bounceEllipse()
{
  
  if (xCoordinate > width-50) {
    background(random(255),random(255),random(255));
    fill(random(255),random(255),random(255));  
  }
    if (xCoordinate > width-50)
    {
     
      xSpeed= -xSpeed;
    
   }
   else if (xCoordinate < 50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));
  
      xSpeed-=xSpeed+xSpeed;
     
   }
   if (yCoordinate > height-50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));  
     ySpeed= -ySpeed;
   }
   else if (yCoordinate < 50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));
     ySpeed-=ySpeed+ySpeed;
   } 
    if (xCoordinate2 > width-50) {
    background(random(255),random(255),random(255));
    fill(random(255),random(255),random(255));
    speedtwoX-=speedtwoX+speedtwoX;
  }
   else if (xCoordinate2 < 50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));
     speedtwoX=-speedtwoX;
   }
   if (yCoordinate2 > height-50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));  
     speedtwoY-=speedtwoY+speedtwoY;
   }
   else if (yCoordinate2 < 50) {
     background(random(255),random(255),random(255));
     fill(random(255),random(255),random(255));
     speedtwoY=-speedtwoY;
   }
}