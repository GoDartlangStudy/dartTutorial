
import 'dart:html';

///Declaring async functions
Future<String> lookUpVersion() async {
  return "Hello";
}

/// Declaring and using async functions
Future checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
}

/// using async functions
Future callAsync() async {
  try{
    await checkVersion();
  }catch(e){
    print(e);
  }
}

void callAsync2() {
//  checkVersion();

  lookUpVersion().then((data) {
    print(data);
  });
}

/// like javascript promise all
//Future deleteLotsOfFiles() async =>  ...
//Future copyLotsOfFiles() async =>  ...
//Future checksumLotsOfOtherFiles() async =>  ...
//
//await Future.wait([
//deleteLotsOfFiles(),
//copyLotsOfFiles(),
//checksumLotsOfOtherFiles(),
//]);
//print('Done with all the long steps!');



//void main() {
//  callAsync2();
//}
