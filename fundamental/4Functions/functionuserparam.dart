
//list.forEach에 printElement함수를 넘겨서 사용함
void main(){
  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);

//loudify 라는 이름의 함수를 표현하고 사용
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');

}

void printElement(int element) {
  print(element);
}

