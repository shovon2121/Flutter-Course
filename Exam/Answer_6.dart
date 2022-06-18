/**
 * 
 * We can user try catch to handle error
 * 
 */

void main(List<String> args) {
  try {
    int a = 10 ~/ 0;
  } catch (e) {
    print("Got Exception $e");
  }
}
