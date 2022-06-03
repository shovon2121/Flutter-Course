void main(List<String> args) {
  var student = ["Mushfik", "Sakib", "Afif"];
  student.forEach((element) {
    print(element);
  });
  print(student.length);
  print(student.last);
  student.add("Miraz");
  student.addAll(["Mustafiz", "Taskin"]);

  student.forEach((element) {
    print(element);
  });
}
