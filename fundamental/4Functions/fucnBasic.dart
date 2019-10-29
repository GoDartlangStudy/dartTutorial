
//dart는 모든 것이 객체 이기 때문에 함수, 변수등 모든것이 객체
void main(){ 

  var _nobleGases = {
    1:'hui'
  };
  //Unlike Java, Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library.
  //_이 붙으면 private
  bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

  if(isNoble(1)) print('hellop');
}

//아래 3개 다 같
//bool isNoble(int atomicNumber) {
//  return _nobleGases[atomicNumber] != null;
//}
//
//isNoble(atomicNumber) {
//  return _nobleGases[atomicNumber] != null;
//}


