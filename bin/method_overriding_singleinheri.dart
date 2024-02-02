void main() {
  int a = 6;
  int b = 2;

  SubData subData = SubData();
  var result = subData.addFunction(a, b);
  print(result);
}

// 1. function with argument with return value.
class AddData {
  dynamic addFunction(int a, int b) {
    int sum = a + b;
    return sum;
  }
}

// method overriding
class SubData extends AddData {
  @override
  dynamic addFunction(int a, int b) {
    int sub = a - b;
    return sub;
  }
}
