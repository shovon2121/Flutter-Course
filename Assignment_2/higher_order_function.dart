void fun(List<int> num, Function sum) {
  int res = 0;
  for (int i = 0; i < num.length; i++) {
    res += num[i];
  }
  sum(res);
}

void main(List<String> args) {
  List<int> l = [2, 2, 3, 2, 3];
  Function f = (int sum) {
    print("The summation is: $sum");
  };

  fun(l, f);
}
