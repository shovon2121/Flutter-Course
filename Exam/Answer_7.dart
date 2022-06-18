/**
 * If the parent class and child got same method then 
 * the child is overriding the method of parent
 */

class Parent {
  void printer() {
    print("In parent");
  }
}

class Child extends Parent {
  void printer() {
    print("In child");
  }
}

void main(List<String> args) {
  Child chd = Child();
  chd.printer();
}
