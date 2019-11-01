class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}

  @Todo('seth', 'make this do something')
  void doSomething() {
    print('do something');
  }
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

void main() {
  // TODO: refactor into an AbstractLlamaGreetingFactory?
  print('Welcome to my Llama farm!');
}
