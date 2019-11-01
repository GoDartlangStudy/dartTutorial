/// 다양한 타입을 대응하기 위해 구현 하는 방법
/// 다른 타입의 같은 코드를 여려개 쓰면 비효율 적임
///

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class CaChid implements Cache<int> {
  final keys = Map();

  CaChid() {
    this.keys['hakuna'] = 12345;
    this.keys['matata'] = 13467;
  }

  int getByKey(String key) {
    return this.keys[key];
  }

  void setByKey(String key, int value) {
    this.keys[key] = value;
  }
}

///  <String> : generic type <T>
/// Class Map<T, T> {
///   Map(T key, T value)
/// }
///
var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

class SomeBaseClass {

}

class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {

}

// example1
class Foo2 extends Foo<Extender> {

}

/// Generic method
///
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}

void call() {
  List<String> lis = ["hakuna"];
  String a = first(lis);

  List<int> lis2 = [1, 2, 3];
  int b = first(lis2);
}
