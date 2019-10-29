

void main(){
  list1();
  list2();



  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfStrings[1] == '#1');
}


void list1(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);
  print(list);
}

void list2(){
  //?는 null일 경우에도 통과되게 함
  var list;
  var list2 = [0, ...?list];
//  var list2 = [0, ...list];  => 에러
  assert(list2.length == 1);
  print(list2);
}
