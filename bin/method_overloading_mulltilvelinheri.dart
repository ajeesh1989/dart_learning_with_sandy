void main() {
  int a = 6;
  int b = 2;

  MultiData multiData = MultiData();
  multiData.addFunction(a, b);
}

// 1. function with argument with return value.
class AddData {
  addFunction(int a, int b) {
    int sum = a + b;
    print(sum);
  }
}

class SubData extends AddData {
  @override
  addFunction(int a, int b) {
    super.addFunction(a, b);
    int sub = a - b;
    print(sub);
  }
}

class MultiData extends SubData {
  @override
  addFunction(int a, int b) {
    super.addFunction(a, b);
    int multi = a * b;
    print(multi);
  }
}
