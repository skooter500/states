class IdleState extends State
{
  IdleState(StateMachine stateMachine)
  {
    super(stateMachine);
  }
  
  void enter()
  {
    println("Nothing happening here... I'll take a rest");
    stateMachine.col = color(0, 255, 0);
  }
  
  void exit()
  {
    println("That was a nice rest");
  }
  
  void update()
  {
    if (PVector.dist(stateMachine.pos, p.pos) < 200)
    {
      stateMachine.changeState(new AlertState(stateMachine));
    }
  }
}