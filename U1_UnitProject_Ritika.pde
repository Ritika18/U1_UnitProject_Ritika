/*

<h2> Description </h2>
<p> whatever I want to write <p>
<h2> Inspiration </h2>
whatever I want to write
<h2> Screenshots </h2>
<img src = "link to the vid"

*/

float currentRectShowing = 1;
float xCurrentPosition [];
float yCurrentPosition [];
float xRectangle [];
float yRectangle [];
float rectangles [];
float size = 15;

void setup ()
{
  size(700,700);
  
  xCurrentPosition = new float [20];
  yCurrentPosition = new float [20];
  xRectangle = new float [20];
  yRectangle = new float [20]; 
  
  xRectangle [0] = 350;
  yRectangle [0] = 350; 
  xRectangle [1] = 335;
  yRectangle [1] = 350; 
  xRectangle [2] = xCurrentPosition [1];
  yRectangle [2] = yCurrentPosition [1]; 
  xRectangle [3] = xCurrentPosition [2];
  yRectangle [3] = yCurrentPosition [2]; 
  
  xCurrentPosition [0] = xRectangle [0] - 15;
  yCurrentPosition [0] = yRectangle [0] - 15;
  xCurrentPosition [1] = xRectangle [1] - 15;
  yCurrentPosition [1] = yRectangle [1] - 15;
  xCurrentPosition [2] = xRectangle [2] - 15;
  yCurrentPosition [2] = yRectangle [2] - 15;
  xCurrentPosition [3] = xRectangle [3] - 15;
  yCurrentPosition [3] = yRectangle [3] - 15;
}

void draw()
{
  background(0);
  fill(255);
  
  for(int i = 0; i<20; i++)
  {
    rect(xRectangle[i], yRectangle [i], size, size);
  }
  
  if(keyPressed)
  {
    if(key == 'd')
    {
      xRectangle[0] = xRectangle[0] + 1;
    }
    
    if(key == 's')
    {
      yRectangle[0] = yRectangle[0] + 1;
    }

    if(key == 'a')
    {
      xRectangle[0] = xRectangle[0] - 1;
    }
    
    if(key == 'w')
    {
      yRectangle[0] = yRectangle[0] - 1;
    }
  }


}