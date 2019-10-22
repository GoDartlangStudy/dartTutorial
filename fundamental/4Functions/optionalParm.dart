

import 'package:meta/meta.dart';

void main(){
  //{}를 이용하여 변수를 받으면 선택적으로 변수 넘기기 가
  enavleFlasgs( hidden: false,bold : true);
}


void enavleFlasgs({bool bold, bool hidden}){
  print("bold 는");
  print(bold);
  print("hidden은");
  print(hidden);
}

//@required는 import 'package:meta/meta.dart'; 를 이용하여 패키지 추가 후에 사용
//@required 가 있는 파라미터는 반드시 넣어야한다. 
void requirdParm({int key, @required String tap}){

}
