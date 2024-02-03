void main() {
  int a = 6;
  int b = 2;

  MultiData multiData = MultiData();
  multiData.addFunction(a, b);
}

// mixin for addition
mixin AddData {
  void addFunction(int a, int b) {
    int sum = a + b;
    print(sum);
  }
}

// mixin for subtraction
mixin SubData {
  void addFunction(int a, int b) {
    int sub = a - b;
    print(sub);
  }
}

mixin MultiData1 {
  void addFunction(int a, int b) {
    int sub = a * b;
    print(sub);
  }
}

// class using mixins
class MultiData with AddData, MultiData1, SubData {
  @override
  void addFunction(int a, int b) {
    super.addFunction(a, b);

    double sub = a / b;
    print(sub);
  }
  // You don't need to override addFunction here, as it is already defined in AddData mixin.
  // If you want to provide a custom implementation, you can do it here.
}

// same function name aanenkil curly bracketinte aduth kidakkunnathe work aavullu..

//  onnil kooduthal thanthamar undenkil childil maathrame super.function vilikkan pattoo..

/*
In your code, you are defining conflicting method names in the AddData and SubData mixins. 
Both mixins have a method named addFunction. When you include both mixins in the MultiData class, 
Dart will use the method from the last included mixin when there are conflicts.
*/