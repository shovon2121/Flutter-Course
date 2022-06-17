abstract class Person {
  void printer();
}

abstract class Student {
  void printer();
}

class Mixed implements Person, Student {
  void printer() {
    print("Using Interface");
  }
}

void main(List<String> args) {
  Mixed mxd = Mixed();
  mxd.printer();
}
