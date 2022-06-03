void main(List<String> args) {
  var student = {"name": "Shovon", "Country": "Bangladesh"};
  print(student);
  print("Name of the student is: ${student["name"]}");
  student.addAll({"id": "1010", "homeTown": "Pabna"});
  print(student);
  student.remove("id");
  print(student);
}
