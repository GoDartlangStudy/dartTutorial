/// Cascade operator (..)

class Student {
  void test_method() {
    print("This is a  test method");
  }

  void test_method1() {
    print("This is a  test method1");
  }
}


void main() {
  new Student()
    ..test_method()
    ..test_method1(); // ex1

  var std =  new Student();
  std.test_method();
  std.test_method1(); // ex2

  /// 두 예제는 둘다 같은 동작을 한다
}
