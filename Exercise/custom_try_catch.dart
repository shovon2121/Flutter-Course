class PasswordException implements Exception {
  String? msg;
  int? errorCode;

  PasswordException(String msg, int error) {
    this.msg = msg;
    this.errorCode = error;
  }

  @override
  String toString() {
    return "Message : $msg, Error code $errorCode";
  }
}

void main() {
  var password = "abcd";

  try {
    if (password.length < 5) {
      throw PasswordException("Password length should be more than 5", 333);
    }
  } on PasswordException catch (e) {
    print(e.toString());
  }
}
