/// 인터페이스는 모든 엔티티가 준수해야하는 구문을 정의합니다.
/// 인터페이스는 객체에서 사용 가능한 메소드 세트를 정의합니다.
/// 클래스는 인터페이스를 사용할 수 있도록 implements 키워드를 사용해야합니다

/// #Syntex
/// class [identifier] implements [interface_name]
///


class Printer {
  void print_data() {
    print("__________Printing Data__________");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("__________Printing to Console__________");
  }
}

/// Implementing Multiple Interfaces (인터페이스는 여러개를 상속 가능함)
class Calculate_Total {
  int ret_tot() {}
}

/// 추상 클래스는 종종 일부 구현으로 인터페이스를 정의하는 데 유용
abstract class Calculate_Discount {
  int ret_dis() {}
}

class Calculator  implements Calculate_Total,Calculate_Discount {
  int ret_tot() {
    return 1000;
  }
  int ret_dis() {
    return 50;
  }
}


void main() {
  ConsolePrinter cp= new ConsolePrinter();
  cp.print_data();

  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
}
