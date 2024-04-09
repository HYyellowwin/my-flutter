/// Support for doing something awesome.
///
/// More dartdocs go here.
library ifunc;

export 'src/ifunc_base.dart';

// TODO: Export any libraries intended for clients of this package.
// TODO: Export any libraries intended for clients of this package.
bool topLevel = true;

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void foo() {} 

class A {
  static void bar() {} 
  void baz() {} 
}

void main() {
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  assert(add2(3) == 5);
  assert(add4(3) == 7);

  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  void printElement(int element) {
    print(element);
  }

  var list2 = [1, 2, 3];
  //list.forEach(printElement(1));  ??

  Function x;
  x=foo;
  assert(foo == x);

  x = A.bar;
  assert(A.bar == x);

  var v = A(); 
  var w = A();
  var y = w;
  x = w.baz;

  assert(y.baz == x);

  assert(v.baz != w.baz);
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

external void someFunc(int i);