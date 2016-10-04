/*

<h2> Description </h2>
<p> whatever I want to write <p>
<h2> Inspiration </h2>
whatever I want to write
<h2> Screenshots </h2>
<img src = "link to the vid"

*/

float currentRectShowing = 1;
float rectangles [];
float size = 15;

PVector[] CurrentPosition = new PVector [20];
PVector[] rectanglePosition = new PVector [20];
PVector distanceBehind;
PVector circlePosition;

boolean x1 = false;
boolean x2 = false;
boolean y1 = false;
boolean y2 = false;


void setup ()
{
  size(700,700);
  
  for(int i = 0; i < 20; i++)
  {
    rectanglePosition [i] = new PVector (350,350);
    rectanglePosition[i].x = 350;
    rectanglePosition[i].y = 350;
    CurrentPosition [i] = new PVector (350,350);
    distanceBehind = new PVector (15,0);
    circlePosition = new PVector (random(width), random(height));
  }

  rectanglePosition[1] = rectanglePosition[1].sub(distanceBehind);

/*  
  rectanglePosition [0] = new PVector (350,350);

  rectanglePosition [1] = CurrentPosition [0];
  rectanglePosition [2] = CurrentPosition [1];
  rectanglePosition [3] = CurrentPosition [2];
  rectanglePosition [4] = CurrentPosition [3];
  rectanglePosition [5] = CurrentPosition [4];
  rectanglePosition [6] = CurrentPosition [5];
  rectanglePosition [7] = CurrentPosition [6];  
  rectanglePosition [8] = CurrentPosition [7];
  rectanglePosition [9] = CurrentPosition [8];
  rectanglePosition [10] = CurrentPosition [9];
  rectanglePosition [11] = CurrentPosition [10]; 
  rectanglePosition [12] = CurrentPosition [11];
  rectanglePosition [13] = CurrentPosition [12];
  rectanglePosition [14] = CurrentPosition [13];
  rectanglePosition [15] = CurrentPosition [14];
  rectanglePosition [16] = CurrentPosition [15];
  rectanglePosition [17] = CurrentPosition [16];
  rectanglePosition [18] = CurrentPosition [17];
  rectanglePosition [19] = CurrentPosition [18];
  
  CurrentPosition [0] = rectanglePosition [0];
  CurrentPosition [1] = rectanglePosition [1];
  CurrentPosition [2] = rectanglePosition [2];
  CurrentPosition [3] = rectanglePosition [3];
  CurrentPosition [4] = rectanglePosition [4];
  CurrentPosition [5] = rectanglePosition [5];
  CurrentPosition [6] = rectanglePosition [6];
  CurrentPosition [7] = rectanglePosition [7];
  CurrentPosition [8] = rectanglePosition [8];
  CurrentPosition [9] = rectanglePosition [9];
  CurrentPosition [10] = rectanglePosition [10];
  CurrentPosition [11] = rectanglePosition [11];
  CurrentPosition [12] = rectanglePosition [12];
  CurrentPosition [13] = rectanglePosition [13];
  CurrentPosition [14] = rectanglePosition [14];
  CurrentPosition [15] = rectanglePosition [15];
  CurrentPosition [16] = rectanglePosition [16];
  CurrentPosition [17] = rectanglePosition [17];
  CurrentPosition [18] = rectanglePosition [18];
  CurrentPosition [19] = rectanglePosition [19];
*/
}

void draw()
{    
  for(int i=0; i<20; i++)
  {
    Boundaries ();
    if(x1 == true)
    {
      rectanglePosition[i].x = rectanglePosition[i].x + 10;
    }
  
    if(x2 == true)
    {
      rectanglePosition[i].x = rectanglePosition[i].x - 10;
    }
  
    if(y1 == true)
    {
      rectanglePosition[i].y = rectanglePosition[i].y + 10;
    }
  
    if(y2 == true)
    {
      rectanglePosition[i].y = rectanglePosition[i].y - 10;
    }
  }  
  background(0);
  fill(255);
  
  for(int i = 0; i<20; i++)
  {
    rect(rectanglePosition[i].x, rectanglePosition[i].y, size, size);
  }
  
  fill(20,130,200);
  rect(rectanglePosition[0].x, rectanglePosition[0].y, size, size);
  
  if(keyPressed)
  {
    if(key == 'd')
    {
      x1 = true;
      x2 = false;
      y1 = false;
      y2 = false;
    }
    
    if(key == 's')
    {
      x1 = false;
      x2 = false;
      y1 = true;
      y2 = false;
    }

    if(key == 'a')
    {
      x1 = false;
      x2 = true;
      y1 = false;
      y2 = false;
    }
    
    if(key == 'w')
    {
      x1 = false;
      x2 = false;
      y1 = false;
      y2 = true;
    }
  }
  
  fill(255,0,0);
  ellipse(circlePosition.x,circlePosition.y,size,size);
  
  if(dist (circlePosition.x, circlePosition.y, rectanglePosition[0].x, rectanglePosition[0].y) < 25)
  {
    circlePosition.x = random(width);
    circlePosition.y = random(height);
  }
}

void Boundaries ()
{
  for(int i = 0; i<20; i++)
  {
    if(rectanglePosition[i].x > width)
    {
      rectanglePosition[i].x = 0;
    }

    if(rectanglePosition[i].x < 0)
    {
      rectanglePosition[i].x = width;
    }
    
    if(rectanglePosition[i].y > height)
    {
      rectanglePosition[i].y = 0;
    }
    
    if(rectanglePosition[i].y < 0)
    {
      rectanglePosition[i].y = height;
    }
  }
}