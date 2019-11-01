import 'dart:isolate';
import 'dart:io';

void foo(var message){
  print('execution from foo ... the message is :${message}');
}

/// 동시성 실행 ( like java thread )

void main(){
  Isolate.spawn(foo,'Hello!!');
  Isolate.spawn(foo,'Greetings!!');
  Isolate.spawn(foo,'Welcome!!');

  sleep(const Duration(seconds:5));

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
