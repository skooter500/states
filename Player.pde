class Player
{
  PVector pos;
  float speed = 5;
  
  Player()
  {
    pos = new PVector(400, 200);
  }
  
  void update()
  {
    
    if (keyPressed)
    {
      if (key == 'w')
      {
        pos.y -= speed;
      }
      
      if (key == 's')
      {
        pos.y += speed;
      }
      
      if (key == 'a')
      {
        pos.x -= speed;
      }
      
      if (key == 'd')
      {
        pos.x += speed;
      }      
    }
  }
    
  void render()
  {
    fill(255);
    ellipse(pos.x, pos.y, 40, 40);
  }
}