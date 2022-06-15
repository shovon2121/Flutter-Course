import 'dart:io';

void main(List<String> args) {
  print("Input the string:");
  String s = stdin.readLineSync() ?? " ";
  int i = 0;
  int len = s.length;
  print(s.length);
  while (i < len) {
    print("${s[i]}");
    i++;
  }
}
