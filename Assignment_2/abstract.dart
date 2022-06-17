import 'inheritance.dart';

abstract class Person {
  void printer();
}

class Employee extends Person {
  void printer() {
    print("Implementing abstract class");
  }
}

void main(List<String> args) {
  Employee emp = Employee();
  emp.printer();
}
