void main(List<String> args) {
  var student = {"name": "Shovon", "Country": "Bangladesh"};
  print(student);
  print("Name of the student is: ${student["name"]}");
  student.add("age":"25");
  print(student);
}
