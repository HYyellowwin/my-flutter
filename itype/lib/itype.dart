/// Support for doing something awesome.
///
/// More dartdocs go here.
library itype;

export 'src/itype_base.dart';
import 'dart:math';
import 'package:itype/itype.dart';
// TODO: Export any libraries intended for clients of this package.
//别名
typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>;
typedef Compare<T> = int Function(T a, T b);
// TODO: Export any libraries intended for clients of this package.
void main(){
  num x=1;
  x+=2.5;
  print('x=$x');

  double z=1;
  print('z=$z');

  var one=int.parse('1');
  assert(one==1);
  var onePointOne=double.parse('1.1');
  assert(onePointOne==1.1);
  String oneAsString=1.toString();
  assert(oneAsString=='1');
  String piAsString=3.14159.toStringAsFixed(2);
  assert(piAsString=='3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111 或运算
  assert((3 & 4) == 0); // 0011 & 0100 == 0000 与运算

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  
  var s1 = 'string interpolation';
  var s2 = "Double quotes work "
      "just as well.";
  assert('ninin $s1'=='ninin string interpolation');
  var s3='''
  You can create
  multi-line strings like this one.
  ''';
  var s = r'In a raw string, not even \n gets special treatment.';
  
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');

  //记录
  var record = ('first', a: 2, b: true, 'last'); 
  (String, int) record2;
  record2 = ('A string', 123);
  ({int a, bool b}) record3;
  record3 = (a: 123, b: true);

  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
  
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Prints 'true'.
  
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color2 = (r: 1, g: 2, b: 3);
  print(point2== color2); // Prints 'false'. Lint: Equals on unrelated types.


  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }
  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };
  var (name, age) = userInfo(json);

  //集合
  var list = [1, 2, 3];//有序
  assert(list.length == 3);
  assert(list[1] == 2);
  var list3 = [0, ...?list];
  assert(list3.length == 4);
  var list2 = [
  'Car',
  'Boat',
  'Plane',
  ];
  var constantList = const [1, 2, 3];

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'}; //无序
  var names = <String>{};
  Set<String> names2 = {};//等价
  names.add('Bob');
  names.addAll(halogens);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var gifts2 = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases2 = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts3 = {'first': 'partridge'};
  assert(gifts3['fifth'] == null);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  //泛型
  var namesn = <String>[];
  namesn.addAll(['Seth', 'Kathy', 'Lars']);
  //namesn.add(42); // Error
  
  var nameSet = Set<String>.from(names);

  var namesx = <String>[];
  namesx.addAll(['Seth', 'Kathy', 'Lars']);
  print(namesx is List<String>); // true
  
  //别名
  IntList il = [1, 2, 3]; 
  Map<String, List<String>> m1 = {}; // Verbose.
  ListMapper<String> m2 = {}; // Same thing but shorter and clearer.
  assert(sort is Compare<int>);
 
  //类型系统


}


(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

int sort(int a, int b) => a - b;