import '../numbers.dart';

void main(List<String> args) {
  final _isEven = (x) => x % 2 == 0;

  final _evenNumbers = numbers.where(_isEven).toList();
  print('Even numbers: $_evenNumbers');
}
