class Person {
  String name = "Shovon";
}

class Employee extends Person {
  String name = "Ahammed";
  void printer() {
    print("Using Super Keyword: ${super.name}");
  }
}

void main() {
  Employee emp = Employee();
  emp.printer();
}
