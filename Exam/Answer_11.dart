/**
 * 
 * As dart got null safety we can not use null deliberately.
 * but we can use null operator to make nullable types.
 * 
 */

void main(List<String> args) {
  int? a;
  print(a);
  a = 10;
  print(a);
}
