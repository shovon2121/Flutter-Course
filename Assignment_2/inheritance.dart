class Human {
  String? name;
  String? address;
}

class Person extends Human {
  void printer() {
    print("Name is $name Address is $address");
  }
}

void main(List<String> args) {
  Person one = Person();
  one.name = "Shovon";
  one.address = "Dhaka";
  one.printer();
}
