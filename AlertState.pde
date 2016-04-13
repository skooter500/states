class AlertState extends State
{
  AlertState(StateMachine stateMachine)
  {
    super(stateMachine);
  }
  
  void enter()
  {
    println("I think I heard something!");
    stateMachine.col = color(255, 140, 0);
  }
  
  void exit()
  {
    println("Hmmm!");
  }
  
  void update()
  {
    if (PVector.dist(stateMachine.pos, p.pos) > 200)
    {
      stateMachine.changeState(new IdleState(stateMachine));
    }
    
    if (PVector.dist(stateMachine.pos, p.pos) < 100)
    {
      stateMachine.changeState(new ScaredState(stateMachine));
    }
  }
}