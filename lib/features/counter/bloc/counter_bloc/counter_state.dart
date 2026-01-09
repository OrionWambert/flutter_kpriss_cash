
sealed class CounterState{

}

class CounterStateUpdated extends CounterState{
  final int value;

  CounterStateUpdated(this.value);
}