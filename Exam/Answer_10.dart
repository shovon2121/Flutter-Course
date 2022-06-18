/**
 * When we make any instance private then
 * other class can not access the instance this way
 * we achieve encapsulation. So if other class need to
 * access private data then access through getter setter
 * but they will not be able to manipulate the data.
 */

class Person {
  String? _name;

  void set setName(String name) {
    this._name = name;
  }

  String? get getName {
    return _name;
  }
}

void main(List<String> args) {
  Person p = Person();
  p.setName = ("shovon");
  print(p.getName);
}
