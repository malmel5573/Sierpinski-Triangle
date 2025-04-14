/* Melanie Lopez

Learning Goal: Implement recursive functions with Java to generate fractal patterns, demonstrating understanding of base and recursive cases. Explore creativity within mathematical constraints by designing a visually interesting and mathematically valid recursive drawing.

04/14/25 */
int len = 700;
public void setup()
{
size(700, 700);
background(0);
}
public void draw()
{
  //background(0);
  fill(255);
  stroke(255);
sierpinski(0, height, len);
}
//public void mouseDragged()//optional
//{

//}
//public void mousePressed(){ fun addition that allows yolu to draw a triangle when you click on the program
// sierpinski(mouseX, mouseY,len/2);
//   //sierpinski(mouseX +(len/2), mouseY,len/2);
//   //sierpinski(mouseX +(len/4), mouseY - (len/2),len/2);
//}

public void sierpinski(int x, int y, int len) 
{
  //where recursion occurs
  if(len<=10){
    triangle(x,y,x+len,y,x+len/2,y-len);
    len-=5;
   // print(len);
 } 
  else{
    //randomized color
     int r = (int)(Math.random()*255)+3;
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255)+225;
fill(r,b,g);
        stroke(r,b,g);

if(mousePressed){ // makes triangles see through if the mouse is pressed
  fill(0);
  
}
    sierpinski(x,y,len/2);
  sierpinski(x+(len/2),y,len/2);
  sierpinski(x+(len/4),y-(len/2),len/2);
     // print(len);
  //  //len-=1;
  }
 
}

  
