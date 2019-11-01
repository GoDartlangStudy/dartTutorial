/// 믹스 인은 여러 클래스 계층에서 클래스 코드를 재사용하는 방법입니다.
/// 믹스 인을 사용하려면 with 키워드와 하나 이상의 믹스 인 이름을 사용하십시오.
///


mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Person {
  String name;
}

class Performer {

}

class Musician extends Performer with Musical {

}

class Maestro extends Person with Musical {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }

}

void main() {
  Maestro m = new Maestro("hakuna");
  m.entertainMe();
}
