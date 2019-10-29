void main() {
  while (!isDone()) {
    doSomething();
  }

  do {
    printLine();
  } while (!atEndOfPage());

}