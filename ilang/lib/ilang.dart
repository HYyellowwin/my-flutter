/// Support for doing something awesome.
///
/// More dartdocs go here.
library ilang;

export 'src/ilang_base.dart';
import 'package:ilang/ilang.dart' show foo;
import 'package:ilang/ilang.dart' hide foo;

// TODO: Export any libraries intended for clients of this package.
late String name;
late String temperature = readThermometer();
// This is the program's only call to readThermometer().
 // Lazily initialized.

void main(){
  //变量
  var name='Bob';
  Object name1='Lisa';
  String name2='Merry';
  final String nickname='Bobby';//不能被修改
  
  const bar=1000;
  const double atm=1.02316*bar;

  int lineCount;
  if(name=='Bob') {
    lineCount=1;
  }else{
    lineCount=0;
  }
  print(lineCount);

  var foo=const [];
  final bar2=const[];
  const baz=[];

  foo=[1,2,3];
  const Object i=3;
  const list=[i as int];
  const map={if(i is int) i:'int'};
  
  //运算符
  bool done=false;
  int a=0,b=0;
  a++;
  int c=a+b;
  b=++a;
  c*=a;
  assert(a==c);
  assert(2+3==5);
  assert(2-3>-2);
  assert(2*3>=6);
  assert(5/2==2.5);
  assert(5~/2==2);
  assert(5%2==1);
  assert('5/2=${5~/2} r ${5%2}'=='5/2=2 r 1');

  //(employee as Person).firstName='Bob';
  
  //b ??=c;//当b为空时为b赋值
  if(!done&&(a==1||c==2)){
    print("这只是一个测试");
  }

  final value=0x22;
  assert((value<<4)==0x220);
  assert((-value>>4)==-0x03);
  assert((value>>>4)==0x02);
  assert((-value>>>4)>0);

  //var visibility=isPublic ? 'public' : 'private';

  String playerName(String? name)=> name ?? 'Guest';
  String planetName(String? name)=> name!= null ? name : 'Guest';

  // var paint=Paint()
  // ?..text='Confirm'
  // ..color =Colors.black
  // ..strokeCap=StrokeCap.round
  
  //注释
  /*z
    这是多行注释
   */

  ///文档单行注释
  
  /**文档多行注释
   * 
   */

  //注解
  @Deprecated('Use something')
  @deprecated
  @override
  // @pragma(playerName(name1))
  //@TODO(this.name1,this.name2)
  int mm;

  //关键字

}

String readThermometer(){
    return "开销较大的函数";
}