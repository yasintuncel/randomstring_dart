import 'package:randomstring_dart/randomstring_dart.dart';

void main() {
  // basic usage
  final rs = RandomString();
  var result = rs.getRandomString();
  print(result);

  // optional usage
  result = rs.getRandomString(
    uppersCount: 5,
    lowersCount: 5,
    numbersCount: 5,
    specialsCount: 15,
    specials: '_-*-/!\\',
  );
  print(result);
  // etc
  result = rs.getRandomString(
    uppersCount: 5,
    lowersCount: 10,
    numbersCount: 8,
    specialsCount: 2,
  );
  print(result);
}

/*
 - outputs
    7Z_0LTg5ef
    **-SY6X/!-6qJ\_-\1_zs-_8*9zcV!
    ovRto9dM4Lt43xI2zf_45z_M2
 */
