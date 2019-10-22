void main(){
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
