void main(List<String> args) {
  List a = [1, 2, 3, 4, 5];
  print("List A is: $a");
  List b = [6, 7, 8, 9, 6];
  print("List B is: $b");
  List c = [...a, ...b];
  print("After combining two list: $c");
}
