
void main(List<String> args) {
  // try-catch
  try {
    divide(10, 0);
  } on IntegerDivisionByZeroException {
    print('Division by zero.');
  } catch (e) {
    print(e);
  } finally {
    print('I will always be executed!');
  }
}

divide(int a, int b) {
  if (b == 0) {
    // 예외처리
    throw new IntegerDivisionByZeroException(); // 내장예외
    // 메시지 문자열을 사용하여 Exception 객체 자체를 던질 수도 있습니다.
    // throw new Exception('Divide by zero');
  }
  return a / b;
}