/*

Name: Blizzard Snake

Description: This game is a variation of the snake game. Similar to the snake game, the
object here is to collect the red circles with only the blue square. Every time you
collect a circle, it adds another square to the blizzard making it more and more 
difficult to effectively capture the red circles. The game uses the following keys = 
'a', 's', 'd', and 'w'. Let, down, right, and up respectively.

*/

//float which describes how many rects are visible
float currentRectangles = 1;
//the size of the rects and circles
float size = 15;

//The current position of the rects
PVector[] CurrentPosition = new PVector [20];
//the rectangles placement
PVector[] rectanglePosition = new PVector [20];
//how much farther before the first circle they need to be
PVector[] distanceBehind = new PVector [20];
//the circles position
PVector circlePosition;

//booleans regarding direction. x1 and y1 = positive   x2 and y2 = negative
boolean x1 = false;
boolean x2 = false;
boolean y1 = false;
boolean y2 = false;


void setup ()
{
  size(700,700);
  
  //for loop assigning the variables
  for(int i = 0; i < currentRectangles; i++)
  {
    //where rectanglePosition [0] appears
    rectanglePosition [0] = new PVector (350,350);
    
    //making all of them appear in the center of the screen
    CurrentPosition [i] = new PVector (350,350);
    
    //how far behind rectanglePosition[0] everything is
    distanceBehind [0] = new PVector (15,0);
    distanceBehind [1] = new PVector (30,0);
    distanceBehind [2] = new PVector (45,0);
    distanceBehind [3] = new PVector (60,0);
    distanceBehind [4] = new PVector (75,0);
    distanceBehind [5] = new PVector (90,0);
    distanceBehind [6] = new PVector (105,0);
    distanceBehind [7] = new PVector (120,0);
    distanceBehind [8] = new PVector (135,0);
    distanceBehind [9] = new PVector (150,0);
    distanceBehind [10] = new PVector (165,0);
    distanceBehind [11] = new PVector (180,0);
    distanceBehind [12] = new PVector (195,0);
    distanceBehind [13] = new PVector (210,0);
    distanceBehind [14] = new PVector (225,0);
    distanceBehind [15] = new PVector (240,0);
    distanceBehind [16] = new PVector (255,0);
    distanceBehind [17] = new PVector (270,0);
    distanceBehind [18] = new PVector (285,0);
    distanceBehind [19] = new PVector (300,0);
    
    //randomizing the location of the circle
    circlePosition = new PVector (random(width), random(height));
  }
  
  //Govomg them of the rects a values / locations
  rectanglePosition[1] = new PVector (350,350);
  rectanglePosition[2] = new PVector (350,350);
  rectanglePosition[3] = new PVector (350,350);
  rectanglePosition[4] = new PVector (350,350);
  rectanglePosition[5] = new PVector (350,350);
  rectanglePosition[6] = new PVector (350,350);
  rectanglePosition[7] = new PVector (350,350);
  rectanglePosition[8] = new PVector (350,350);
  rectanglePosition[9] = new PVector (350,350);
  rectanglePosition[10] = new PVector (350,350);
  rectanglePosition[11] = new PVector (350,350);
  rectanglePosition[12] = new PVector (350,350);
  rectanglePosition[13] = new PVector (350,350);
  rectanglePosition[14] = new PVector (350,350);
  rectanglePosition[15] = new PVector (350,350);
  rectanglePosition[16] = new PVector (350,350);
  rectanglePosition[17] = new PVector (350,350);
  rectanglePosition[18] = new PVector (350,350);
  rectanglePosition[19] = new PVector (350,350);
  
  //saying that the rects should be -- behind rectanglePosition [0]
  rectanglePosition[1] = rectanglePosition[1].sub(distanceBehind[0]);
  rectanglePosition[2] = rectanglePosition[2].sub(distanceBehind[1]);
  rectanglePosition[3] = rectanglePosition[3].sub(distanceBehind[2]);
  rectanglePosition[4] = rectanglePosition[4].sub(distanceBehind[3]);
  rectanglePosition[5] = rectanglePosition[5].sub(distanceBehind[4]);
  rectanglePosition[6] = rectanglePosition[6].sub(distanceBehind[5]);
  rectanglePosition[7] = rectanglePosition[7].sub(distanceBehind[6]);
  rectanglePosition[8] = rectanglePosition[8].sub(distanceBehind[7]);
  rectanglePosition[9] = rectanglePosition[9].sub(distanceBehind[8]);
  rectanglePosition[10] = rectanglePosition[10].sub(distanceBehind[9]);
  rectanglePosition[11] = rectanglePosition[11].sub(distanceBehind[10]);
  rectanglePosition[12] = rectanglePosition[12].sub(distanceBehind[11]);
  rectanglePosition[13] = rectanglePosition[13].sub(distanceBehind[12]);
  rectanglePosition[14] = rectanglePosition[14].sub(distanceBehind[13]);
  rectanglePosition[15] = rectanglePosition[15].sub(distanceBehind[14]);
  rectanglePosition[16] = rectanglePosition[16].sub(distanceBehind[15]);
  rectanglePosition[17] = rectanglePosition[17].sub(distanceBehind[16]);
  rectanglePosition[18] = rectanglePosition[18].sub(distanceBehind[17]);
  rectanglePosition[19] = rectanglePosition[19].sub(distanceBehind[18]);
}

void draw()
{    
  for(int i=0; i<currentRectangles; i++)
  {
    //creating a new void
    Boundaries ();
    
    //direction - when x1 = true, increase the x speed
    if(x1 == true)
    {
      rectanglePosition[i].x = rectanglePosition[i].x + 10;
    }

    //direction - when x2 = true, decrease the x speed
    if(x2 == true)
    {
      rectanglePosition[i].x = rectanglePosition[i].x - 10;
    }

    //direction - when y1 = true, increase the y speed
    if(y1 == true)
    {
      rectanglePosition[i].y = rectanglePosition[i].y + 10;
    }
    
    //direction - when y2 = true, decrease the y speed
    if(y2 == true)
    {
      rectanglePosition[i].y = rectanglePosition[i].y - 10;
    }
  }  
  
  //colors
  background(0);
  fill(255);
  
  //Drawing all 20 rects
  for(int i = 0; i<currentRectangles; i++)
  {
    rect(rectanglePosition[i].x, rectanglePosition[i].y, size, size);
  }
  
  //Special rectanglePosition[0] = gets a different color
  fill(20,130,200);
  rect(rectanglePosition[0].x, rectanglePosition[0].y, size, size);
  
  //movement connected to the keys
  if(keyPressed)
  {
    //move right at a constant speed - Once 'd' is clicked constantly move right
    if(key == 'd')
    {
      x1 = true;
      x2 = false;
      y1 = false;
      y2 = false;
    }

    //move down at a constant speed - Once 's' is clicked constantly move down
    if(key == 's')
    {
      x1 = false;
      x2 = false;
      y1 = true;
      y2 = false;
    }

    //move left at a constant speed - Once 'a' is clicked constantly move left
    if(key == 'a')
    {
      x1 = false;
      x2 = true;
      y1 = false;
      y2 = false;
    }

    //move up at a constant speed - Once 'w' is clicked constantly move up
    if(key == 'w')
    {
      x1 = false;
      x2 = false;
      y1 = false;
      y2 = true;
    }
  }
  
  //draw the red circle
  fill(255,0,0);
  ellipse(circlePosition.x,circlePosition.y,size,size);
  
  //if the circle and first rect collide
  if(dist (circlePosition.x, circlePosition.y, rectanglePosition[0].x, rectanglePosition[0].y) < 25)
  {
    //circle gets a new random location and there is 1 more rectangle showing
    circlePosition.x = random(width);
    circlePosition.y = random(height);
    currentRectangles++;
  }
}

//void for the boundaries of the rects
void Boundaries ()
{
  for(int i = 0; i < currentRectangles; i++)
  {
    //telling it to reappear at the left, if it goes off the screen to the right
    if(rectanglePosition[i].x > width)
    {
      rectanglePosition[i].x = 0;
    }

    //telling it to reappear at the right, if it goes off the screen to the left
    if(rectanglePosition[i].x < 0)
    {
      rectanglePosition[i].x = width;
    }

    //telling it to reappear at the top, if it goes off the screen to the bottom
    if(rectanglePosition[i].y > height)
    {
      rectanglePosition[i].y = 0;
    }

    //telling it to reappear at the bottom, if it goes off the screen to the top
    if(rectanglePosition[i].y < 0)
    {
      rectanglePosition[i].y = height;
    }
  }
}