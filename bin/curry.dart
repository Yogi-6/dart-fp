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
}
