String toUpperCase(String x) => x.toUpperCase();
String happy(String x) => '$x :)';
String sad(String x) => '$x :(';

String question(String x) => '$x?';
String exclaim(String x) => '$x!';
String fullStop(String x) => '$x.';

/// Composition happens right to left i.e. Functions are applied from right to left.
/// Pipe is opposite of compose, functions are applied from left to right.
Function compose(f, g) => (x) => f(g(x));

/// Composition to take n number of functions and compose them.
Function composeN(List<Function> fns) {
  final _reversed = fns.reversed.toList();

  return (x) {
    print('composing $x');
    for (Function fn in _reversed) {
      x = fn(x);
      print(x);
    }
    return x;
  };
}

void main(List<String> args) {
  final _happyGreet = compose(happy, toUpperCase);
  final _sadGreet = compose(sad, toUpperCase);

  print(_happyGreet('Hey there'));
  print(_sadGreet('Hello'));

  final _randomTrailingSymbols = composeN([question, exclaim, fullStop]);

  print(_randomTrailingSymbols('Testing some random trailing symbols'));
}
