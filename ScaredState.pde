class ScaredState extends State
{
  ScaredState(StateMachine stateMachine)
  {
    super(stateMachine);
  }
  
  void enter()
  {
    println("OMG He is coming to get me! Im so scared!");
    stateMachine.col = color(255, 0, 0);
  }
  
  void exit()
  {
    println("Phew. That was close");
  }
  
  void update()
  {
    if (PVector.dist(stateMachine.pos, p.pos) > 200)
    {
      stateMachine.changeState(new IdleState(stateMachine));
    }
  }
}