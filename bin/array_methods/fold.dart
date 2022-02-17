import '../numbers.dart';

void main(List<String> args) {
  final _total =
      numbers.fold<int>(0, (previousValue, element) => previousValue + element);
  print(_total);

  final _mapEvenAndOdd = numbers.fold<Map<String, List<int>>>(
    {
      'even': [],
      'odd': [],
    },
    (previousValue, element) {
      if (element.isEven) {
        previousValue['even'] = [...previousValue['even'] ?? [], element];
      }
      if (element.isOdd) {
        previousValue['odd'] = [...previousValue['odd'] ?? [], element];
      }
      return previousValue;
    },
  );

  print(_mapEvenAndOdd);
}
