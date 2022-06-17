class Parent {
  void printer() {
    print("In parent class");
  }
}

class Child extends Parent {
  void printer() {
    print("In child class");
  }
}

void main(List<String> args) {
  Child ch = Child();
  ch.printer();
}
