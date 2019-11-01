//열거 형은 명명 된 상수 값을 정의하는 데 사용
//열거 형은 enum 키워드를 사용 -> c 언어 enum이랑 비슷


enum Status {
  none,
  running,
  stopped,
  paused
}

void main() {
  print(Status.values);
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));
  print('running: ${Status.running}, ${Status.running.index}');
  print('running index: ${Status.values[1]}');
}
