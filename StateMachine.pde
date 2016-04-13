class StateMachine
{
  State state;
  PVector pos;
  color col;
  
  StateMachine()
  {
    pos = new PVector(100, 100);
  }
  
  void changeState(State newState)
  {
    if (state != null)
    {
      state.exit();
    }
    state = newState;
    
    if (state != null)
    {
      state.enter();
    }        
  }
  
  void update()
  {
    if (state != null)
    {
      state.update();
    }            
  }
  
  void render()
  {
    fill(col);
    ellipse(pos.x, pos.y, 40, 40);
  }  
}