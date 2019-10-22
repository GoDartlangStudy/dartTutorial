
//list.forEach에 printElement함수를 넘겨서 사용함
void main(){
  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);
}

void printElement(int element) {
  print(element);
}

