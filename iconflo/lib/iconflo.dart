/// Support for doing something awesome.
///
/// More dartdocs go here.
library iconflo;

export 'src/iconflo_base.dart';

import 'dart:math';

// TODO: Export any libraries intended for clients of this package.
void main(){
  var message = StringBuffer('Dart is fun');
  
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }
  
  var candidates=[];
  for (final candidate in candidates) {
  candidate.interview();
  }
  
  // for (final Candidate(:name, :yearsExperience) in candidates) {
  // print('$name has $yearsExperience of experience.');
  // } 

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

  while (true) {
  if (callbacks[1]==null) break;
  else if(callbacks[1]==collection) continue;
  print('hello');
  break; 
  }

  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      //executeClosed();
    case 'PENDING':
      //executePending();
      continue newCase;
    case 'APPROVED':
      //executeApproved();
     case 'DENIED':
      //executeDenied();
    case 'OPEN':
      //executeOpen();

    newCase:
    case 'PENDING':
      //executeNowClosed();

    default:
      //executeUnknown();
  }

  // token=switch(command){
  //   'CLOSED'=>//executeClosed(),
  //   'PENDING'=> //executePending(),
  //   _=>//executeUnknown()
  // };

  
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => pi * r * r
};