void main() {
  List<String> abc = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "ñ",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
  ];
  List<String> abc2 = [];
  int control = 1;

  abc.forEach((x) {
    if (control % 3 != 0) {
      abc2.add(x);
    }
    control++;
  });

  print("abecedario multiplo de tres");

  abc2.forEach((x) {
    print(x);
  });
}
