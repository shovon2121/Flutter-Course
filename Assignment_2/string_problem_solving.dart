/*
There is a sequence of words in Pascal as a string of letters, s, having the following properties:

For each of the subsequent words, the first letter is uppercase and rest of the letters are lowercase.
Given , s determine the number of words in s.

Example
s = OneTwoThree
There are 3  words in the string: 'One', 'Two', 'Three'.

*/

import 'dart:io';

void main(List<String> args) {
  String s = "ShovonAmarNam";
  int counter = 0;
  var a = s.codeUnitAt(0);
  print(a);

  if (a > 64 && a < 91) {
    counter = 1;
    for (int i = 1; i < s.length; i++) {
      if (s.codeUnitAt(i) > 64 && s.codeUnitAt(i) < 91) {
        counter++;
      }
    }
  }

  print("Number of word is: $counter");
}
