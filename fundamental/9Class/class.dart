//Classes
//다트는 클래스와 믹스 인 기반 상속을 가진 객체 지향 언어
//모든 객체는 클래스의 인스턴스이며 모든 클래스는 Object를 상속
//Mixin 기반 상속은 모든 클래스 (Object 제외)에 정확히 하나의 수퍼 클래스가 있지만 클래스 본문을 여러 클래스 계층에서 재사용 할 수 있음을 의미 ( 다중 상속 가능...)

// Using class members
// (.)을 사용하여 맴버에 접근한다

/// #Syntex
///class class_name {
///      <fields>            필드는 클래스에서 선언 된 모든 변수입니다. 필드는 객체와 관련된 데이터를 나타냄
///      <getters/setters>   프로그램이 클래스 필드의 값을 초기화하고 검색 할 수 있음, 기본 getter / setter는 모든 클래스와 연결됨, 그러나 기본적으로 setter / getter를 명시 적으로 정의하여 재정의 할 수 있음
///      <constructors>      클래스의 객체에 대한 메모리 할당을 담당합니다.
///      <functions>         함수는 객체가 취할 수있는 동작을 나타냅니다. 또한 때때로 메소드라고도합니다.
///    }
///    위의 이러한 구성 요소를 함께 클래스의 데이터 멤버라고 한다.

/// # Creating Instance of the class
/// var object_name = new class_name([ arguments ])
///

/// # Dart Constructors
/// 생성자는 클래스의 변수를 초기화하는 클래스의 특수 함수
/// Class_name(parameter_list) {
///   constructor body
///}
///

/// # Named Constructors
/// Class_name.constructor_name(param_list) Dart는 클래스가 여러 생성자를 정의 할 수 있도록 명명 된 생성자를 제공
///

///
/// # The this Keyword
/// this 키워드는 클래스의 현재 인스턴스를 나타냅니다
///

/// # Getters and Setters
/// 접근 자 및 변경 자라고도하는 Getter 및 Setter를 사용하면 프로그램에서 클래스 필드 값을 각각 초기화하고 검색 할 수 있습니다.
/// getter 또는 접근자는 get 키워드를 사용하여 정의됩니다. setter 또는 mutator는 set 키워드를 사용하여 정의됩니다.
/// Syntax: Defining a getter
/// Return_type  get identifier {}
/// set identifier {}
///

//Example 1
class Car {
  // field
  String engine = "BMW";

  // function
  void disp() {
    print(engine);
  }
}

// Example2
class Car2 {
  Car2(String engine) {
    print(engine);
  }
}

// Example3
class Car3 {
  Car3() {
    print("Non-parameterized constructor invoked");
  }

  Car3.namedConst(String engine) {
    print("The engine is : ${engine}");
  }
}

// Example4
class Car4 {

  String engine;

  Car4(String engine) {
    this.engine = engine; // -> see this keyword.
    print("The engine is : ${engine}");
  }
}

// Exampe5
/// Class Inheritance
/// # syntex
/// class child_class_name extends parent_class_name
///
class Student {
  String name;
  int age;

  // this is getter return stud_name
  String get stud_name {
    return name;
  }

  // this is getter return stud_age
  int get stud_age {
    return age;
  }

  // this is setter
  void set stud_name(String name) {
    this.name = name;
  }

  // this is setter
  void set stud_age(int age) {
    if(age<= 0) {
      print("Age should be greater than 5");
    }  else {
      this.age = age;
    }
  }
}

// Example6
class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}
class Circle extends Shape {

}

// Example7
class Root {
  String str;
}
class Child extends Root {}
class Leaf extends Child {}

// Example8
/// Class Inheritance and Method Overriding
///
class Parent {
  void m1(int a){ print("value of a ${a}");}
}
class Child2 extends Parent {
  @override
  void m1(int b) {
    print("value of b ${b}");
  }
}

// Exmaple9
/// The static Keyword
class StaticMem {
  static int num;
  static disp() {
    print("The value of num is ${StaticMem.num}")  ;
  }
}

// Exmaple10
/// The super Keyword
/// super 키워드는 부모의 클래스의 원형을 참조하기 위해서 사용
/// 키워드는 변수, 속성 또는 메서드의 수퍼 클래스 버전을 나타내는 데 사용할 수 있습니다.
///
class Parent2 {
  String msg = "message variable from the parent class";
  void m1(int a){ print("value of a ${a}");}
}
class Child3 extends Parent2 {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(13);
    print("${super.msg}")   ;
  }
}

void main() {
  var obj = new Car(); // Creating Instance of the class
  obj.disp(); // // Output -- print E1001

  Car2 c = new Car2("VOLVO"); // ex02

  Car3 c3 = new Car3();
  Car3 c3_named = new Car3.namedConst("KONA");

  // Output --
  //  The engine is : E1001
  //  Non-parameterized constructor invoked

  Car4 c4 = new Car4("Kactus");


  Student s1 = new Student();
  s1.stud_name = 'MARK';
  s1.stud_age = 0;
  print(s1.stud_name);
  print(s1.stud_age);

  var cir = new Circle();
  cir.cal_area(); // Output -- calling calc area defined in the Shape class


  var lea = new Leaf();
  lea.str = "hello";
  print(lea.str);

  var chr = new Child2(); // Example8
  chr.m1(10);

  StaticMem.num = 12;// Example9
  StaticMem.disp();


  var ch3 = new Child3(); // Exmaple10
  ch3.m1(10);

}

