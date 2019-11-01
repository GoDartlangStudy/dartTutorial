typedef ManyOperation(int firstNo , int secondNo);  //function signature

Add(int firstNo,int second){
  print("Add result is ${firstNo+second}");
}
Subtract(int firstNo,int second){
  print("Subtract result is ${firstNo-second}");
}
Divide(int firstNo,int second){
  print("Divide result is ${firstNo/second}");
}
Calculator(int a, int b, ManyOperation oper){
  print("Inside calculator");
  oper(a,b);
}


typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

// Initial, broken implementation.
int sort(Object a, Object b) => 0;


void main(){
  /// Method 1
  ManyOperation oper = Add;
  oper(10,20);

  oper = Subtract; // 실행할 함수 원형을 전달
  oper(30,20);

  oper = Divide;
  oper(50,5);

  /// Method 2
  Calculator(5,5,Add);
  Calculator(5,5,Subtract);
  Calculator(5,5,Divide);


  SortedCollection coll = SortedCollection(sort);
  assert(coll.compare is Function); // compare 는 함수 타입
  assert(coll.compare is Compare);  // compare 는 Compare type
}
