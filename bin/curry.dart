import 'package:dartz/dartz.dart';

import 'numbers.dart';

typedef NameCallback = String Function({required String name});

NameCallback greet({String greeting = 'Hey'}) {
  return ({required String name}) => '$greeting $name';
}

void main(List<String> args) {
  final _greetMorning = greet(greeting: 'Good Morning');

  print(_greetMorning(name: 'John'));
  print(_greetMorning(name: 'Jane'));

  final _greetEvening = greet(greeting: 'Good Evening');
  print(_greetEvening(name: 'John'));
  print(_greetEvening(name: 'Jane'));

  final _increment = curry2<int, int, int>((x, y) => x + y);

  final _result = numbers.map(_increment(5)).toList();
  print(_result);

  final addThreeNumbers = curry3<int, int, int, int>((a, b, c) => a + b + c);

  final _sum = addThreeNumbers(10)(2)(3);
  print(_sum);
}
