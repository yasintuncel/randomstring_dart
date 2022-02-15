import 'package:flutter_test/flutter_test.dart';
import 'package:randomstring_yt/randomstring_yt.dart';

void main() {
  final rs = RandomString();
  String result = rs.getRandomString();
  print(result);
  test('default getRandomString() length is equal to 10', () {
    for (var i = 0; i < 10; i++) {
      String result = rs.getRandomString();
      expect(
        result.length,
        10,
      );
    }
  });
  test('all count option to 0 then output will be \'yoo\'', () {
    for (var i = 0; i < 10; i++) {
      String result = rs.getRandomString(
        uppersCount: 0,
        lowersCount: 0,
        numbersCount: 0,
        specialsCount: 0,
        specials: '',
      );
      expect(
        result,
        'yoo',
      );
    }
  });
  test('specialsCount > special.length and canSpecialsRepeat:false', () {
    for (var i = 0; i < 10; i++) {
      String specials = '_-=';
      String result = rs.getRandomString(
        uppersCount: 5,
        lowersCount: 5,
        numbersCount: 5,
        specialsCount: 10,
        specials: specials,
        canSpecialRepeat: false,
      );
      expect(
        result.length,
        15 + specials.length,
      );
    }
  });
}
