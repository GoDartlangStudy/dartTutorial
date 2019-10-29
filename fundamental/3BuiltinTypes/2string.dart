void main(){

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";


  var s = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s ==
      'String concatenation works even over '
          'line breaks.');

  var s5 = 'The + operator ' + 'works, as well.';
  assert(s5 == 'The + operator works, as well.');

  print(s5);


      var s11 = '''
    You can create
    multi-line strings like this one.
    ''';

      var s21 = """This is also a
    multi-line string.""";

//  You can create a “raw” string by prefixing it with r:

  var ss = r'In a raw string, not even \n gets special treatment.';



  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

// These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';
}
