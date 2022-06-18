/**
 * this keyword refers to current class object.
 * if the class attribute and method parameter are same
 * then this keyword refers to class attribute
 * 
 * 
 */

class Person {
  String? name;
  void printer(String name) {
    this.name = name;
    print(this.name);
  }
}

void main(List<String> args) {
  Person p = Person();
  p.printer("shovon");
}
