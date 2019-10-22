main() {
  //In Dart, runes are the UTF-32 code points of a string.
  //
  //Unicode defines a unique numeric value for each letter, digit, and symbol used in all of the world’s writing systems. Because a Dart string is a sequence of UTF-16 code units, expressing 32-bit Unicode values within a string requires special syntax.
  //
  //The usual way to express a Unicode code point is \uXXXX, where XXXX is a 4-digit hexadecimal value. For example, the heart character (♥) is \u2665. To specify more or less than 4 hex digits, place the value in curly brackets. For example, the laughing emoji (😆) is \u{1f600}.
  //
  //The String class has several properties you can use to extract rune information. The codeUnitAt and codeUnit properties return 16-bit code units. Use the runes property to get the runes of a string.
  //
  //The following example illustrates the relationship between runes, 16-bit code units, and 32-bit code points. Click Run to see runes in action.
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}
