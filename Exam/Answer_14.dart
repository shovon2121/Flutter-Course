void higher(List<int> num, Function sum) {
  int res = 0;
  for (int i = 0; i < num.length; i++) {
    res += num[i];
  }
  sum(res);
}

void main(List<String> args) {
  List<int> l = [1, 2, 3, 4, 5];
  Function f = (int sum) {
    print("The sum is: $sum");
  };

  higher(l, f);
}
