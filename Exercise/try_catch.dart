void main(List<String> args) {
  try {
    int a = 10 ~/ 0;
  } on UnsupportedError {
    print("Can not divide by zero");
  }
}
