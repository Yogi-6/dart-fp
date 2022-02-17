import 'numbers.dart';

void main(List<String> args) {
  final _result = numbers.reduce((value, element) => value + element);
  print(_result);
}
