abstract class Employee {
  void printer();
}

class Inter implements Employee {
  void printer() {
    print("Using Interface");
  }
}

void main(List<String> args) {
  Inter a = Inter();
  a.printer();
}
