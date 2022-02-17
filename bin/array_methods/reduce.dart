import '../numbers.dart';

void main(List<String> args) {
  final _total = numbers.reduce((value, element) => value + element);
  print(_total);
}
