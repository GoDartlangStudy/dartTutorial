void main() {

  // 산수연산자
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  //  연산자
  // null 검사
  // ??
  var e;
  var v = 'var';
  print(e ?? v); // e가 null이면 val 사용, val가 null 이면 e 사용
  //  exp ?? otherExp
  //  ((x) => x == null ? otherExp : x)(exp)

  // 타입 검증 연산자
  // as 타입 캐스팅
  // is 특정 타입여부 확인 일치하면 true , 자바스크립트의 typeof 와 유사
  // is! 특정 타입여부 확인 일치하면 false
  var emp ;

  // is 의 경우 emp가 null이거나 Person이 아니면 아무것도 하지않습니다.
  if (emp is String) {
    // Type check
//    emp.firstName = 'Bob';
  }
  // as는 exception을 발생합니다.
//  (emp as String).firstName = 'Bob';


  // 할당 연산자
  // op 연산자 : a op= b (= a = a op b )
  // ex) -=, +=, *= ...
  var value ,a ,b = 'a';
  a = value;
  // b가 null 인 경우 b에 값을 할당합니다. 그렇지 않으면 b는 동일하게 유지됩니다.
  b ??= value;

  // 논리 연산자
  // !표현 참/거짓
  // || or
  // && and
  var done, col;
  if (!done && (col == 0 || col == 3)) {
    // ...Do something...
  }

  // 비트 및 시프트 연산자
  // & and
  // | or
  // ^ xor
  // ~expr 0 -> 1 , 1 -> 0 치환 단항 비트 보스
  // << 왼쪽으로 시프트
  // >> 오른쪽으로 시프트
  final val = 0x22;
  final bitmask = 0x0f;

  assert((val & bitmask) == 0x02); // AND
  assert((val & ~bitmask) == 0x20); // AND NOT
  assert((val | bitmask) == 0x2f); // OR
  assert((val ^ bitmask) == 0x2d); // XOR
  assert((val << 4) == 0x220); // Shift left
  assert((val >> 4) == 0x02); // Shift right
  //
  //  // 조건연산자
  //  // condition ? expr1 : expr2 : condition 이 참이면 expr1 아니라면 expr2 를 반환한다
  //  var isPublic;
  //  var visibility = isPublic ? 'public' : 'private';
  //  // expr1 ?? expr2 : expr1 이 null 인경우 expr2 반환 아니라면 expr1 반환
  //  String playerName(String name) => name ?? 'Guest';
  //  print(playerName(null));
  //
  //  // cascade (계단식)
  //  // 계단식 (..)을 사용하면 동일한 객체에 대해 일련의 작업을 수행 할 수 있습니다.
  //  // 함수 호출 외에도 동일한 객체의 필드에 액세스 할 수 있습니다.
  //  // 이것은 종종 임시 변수를 만드는 단계를 생략하고보다 유동적 인 코드를 작성할 수 있도록합니다.
  // Cascade 연산자는 메소드체이닝처럼 자신의 스스로를 계속 불러내 실행하는 연산자입니다.
//  var button = querySelector('#confirm');
//  button.text = 'Confirm';
//  button.classes.add('important');
//  button.onClick.listen((e) => window.alert('Confirmed!'));
// 위의 예문과 같음
//  querySelector('#confirm') // Get an object.
//    ..text = 'Confirm' // Use its members.
//    ..classes.add('important')
//    ..onClick.listen((e) => window.alert('Confirmed!'));

  // 기타 연산자
  // () 함수 호출
  // [] 목록 접근
  // . ex) foo.bar  특정 속성값에 접근
  // ?.  선택적 맴버 접근 위와 유사하나 foo?.bar 와 같이 접근하면, 만약 foo 가 null 인경우 오류를 발생하지 않고 null을 반환한다.
}