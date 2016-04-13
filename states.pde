void setup()
{
  size(500, 500);
  p = new Player();
  s = new StateMachine();
  s.changeState(new IdleState(s));
}

Player p;
StateMachine s;

void draw()
{
  background(0);
  stroke(0);
  p.update();
  p.render();
  
  s.update();
  s.render();
}