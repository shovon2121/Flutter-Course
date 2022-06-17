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
