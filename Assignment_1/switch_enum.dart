enum Color { red, blue, green }

void main() {
  var flowerColor = Color.green;

  // Switch-case
  switch (flowerColor) {
    case Color.blue:
      print("Blue Color Flower");
      break;
    case Color.red:
      print("Red Color Flower");
      break;
    case Color.green:
      print("Green Color Flower");
      break;
    default:
      print("Others Color");
  }
}
