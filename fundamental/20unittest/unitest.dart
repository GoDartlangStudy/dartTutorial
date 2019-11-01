import 'package:test/test.dart';
// Import the test package

// function be tested
int Add(int x,int y) {
  return x+y;
}

void main() {
  // Define the test
  test("test to check add method",(){
    // Arrange
    var expected = 30;

    // Act
    var actual = Add(10,20);

    // Asset
    expect(actual,expected);
  });
}
