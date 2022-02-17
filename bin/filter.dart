// Take an array of number from 0 to 20
const _numbers = [
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20
];

void main(List<String> args) {
  final _isEven = (x) => x % 2 == 0;

  final _evenNumbers = _numbers.where(_isEven).toList();
  print('Even numbers: $_evenNumbers');
}
