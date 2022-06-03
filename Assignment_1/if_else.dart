import 'dart:io';

void main(List<String> args) {
  print("Input 3 number to find the highest");
  String a = stdin.readLineSync() ?? "0";
  String b = stdin.readLineSync() ?? "0";
  String c = stdin.readLineSync() ?? "0";

  int x = int.parse(a);
  int y = int.parse(b);
  int z = int.parse(c);

  print("Highest Number using IF statement");

  if (x > y && x > z) {
    print("First Number is the highest");
  } else if (y > x && y > z) {
    print("Second Number is the highest");
  } else {
    print("Third Number is the highest");
  }
}
