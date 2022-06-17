class Person {
  String? name;
  int? age;
  Person(this.name, this.age) {
    print("Using Constructor- Name is: ${name}");
  }
}

void main(List<String> args) {
  Person p = Person("shovon", 26);
}
