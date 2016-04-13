abstract class State
{
  StateMachine stateMachine;
  
  State(StateMachine stateMachine)
  {
    this.stateMachine = stateMachine;
  }
  
  abstract void update();
  
  abstract void enter();
  abstract void exit();
  
}