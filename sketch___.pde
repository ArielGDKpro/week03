int bgWidth = 500;
int bgHeight = 500;
float lineSize = 0;
float colSize = 0;

color[] colors = {255, #ff0000, #ffff00, #0000ff,0};
void mondrianStyle() 
{
  for(int line = 0; line < bgHeight; line += lineSize + 3)
  {
    lineSize = random(4, bgWidth/3);
    for(int col = 0; col < bgWidth; col += colSize + 3)
    {
      colSize = random(4, bgHeight/2);
      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);

      strokeWeight(3);
      stroke(10);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, bgWidth, y);
      line(x, line, x, y);
  
    }
  }
}

void setup() {
  size(500,500);
  background(255);
  mondrianStyle(); 
}
