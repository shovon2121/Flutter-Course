import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print("Enter the number");
  String? num = stdin.readLineSync() ?? "";
  int n = int.parse(num);
  if (sqrt(n) > 0) {
    if (n % 2 == 0) {
      print("Even");
    } else {
      print("odd");
    }
  }
}
