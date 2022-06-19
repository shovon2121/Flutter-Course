class PasswordException implements Exception {
  String msg() {
    return ("password exception");
  }
}

void main() {
  var password = "abcd";

  try {
    if (password.length < 5) {
      throw PasswordException();
    }
  } on PasswordException catch (e) {
    print(e.msg());
  }
}
