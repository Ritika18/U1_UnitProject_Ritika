/*

<h2> Description </h2>
<p> whatever I want to write <p>
<h2> Inspiration </h2>
whatever I want to write
<h2> Screenshots </h2>
<img src = "link to the vid"

*/

float currentRectangles = 1;
float rectangles [];
float size = 15;

PVector[] CurrentPosition = new PVector [20];
PVector[] rectanglePosition = new PVector [20];
PVector[] distanceBehind = new PVector [20];
PVector circlePosition;

boolean x1 = false;
boolean x2 = false;
boolean y1 = false;
boolean y2 = false;


void setup ()
{
  size(700,700);
  
  for(int i = 0; i < currentRectangles; i++)
  {
    rectanglePosition [i] = new PVector (350,350);
    rectanglePosition[i].x = 350;
    rectanglePosition[i].y = 350;
    CurrentPosition [i] = new PVector (350,350);
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
    circlePosition = new PVector (random(width), random(height));
  }
  
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
  
  for(int i = 0; i<currentRectangles; i++)
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
    currentRectangles++;
  }
}

void Boundaries ()
{
  for(int i = 0; i < currentRectangles; i++)
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