void main () {
  // assert 개발모드에만 영향을 미친다.
  // 조건이 거짓인 경우 assert 문을 사용하여 정상 실행을 중단한다.

  var text = '';
  var number = 50;
  var urlString = 'https://www.naver.com';

  // 값이 null이 아님을 확인
  assert(text != null);

  print(text);

// 값이 100 이하
  assert(number < 100);
  print(number);

// https로 시작하는 url 여부 확인
  assert(urlString.startsWith('https'));
  print(urlString);

  // 결과 number,urlString 만 출력된다.

}