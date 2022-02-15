library randomstring;

import 'dart:math';

class RandomString {
  String lowers = 'abcdefghijklmnopqrstuvwxyz';
  String uppers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String numbers = '0123456789';
  final Random _random = Random();
//
  String getRandomString({
    int lowersCount = 3,
    int uppersCount = 3,
    int numbersCount = 3,
    int specialsCount = 1,
    String specials = '_',
    bool canSpecialRepeat = true,
  }) {
    String uuid = '';

    for (var i = 0; i < lowersCount; i++) {
      uuid += lowers[_random.nextInt(lowers.length)];
    }
    for (var i = 0; i < uppersCount; i++) {
      uuid += uppers[_random.nextInt(uppers.length)];
    }
    for (var i = 0; i < numbersCount; i++) {
      uuid += numbers[_random.nextInt(numbers.length)];
    }

    if (!canSpecialRepeat) {
      if (specialsCount > specials.length) {
        specialsCount = specials.length;
      }
    }

    for (var i = 0; i < specialsCount; i++) {
      var specialChar = specials[_random.nextInt(specials.length)];
      uuid += specialChar;
      if (!canSpecialRepeat) {
        specials = specials.replaceAll(specialChar, '');
      }
    }
    String shuffled = (uuid.split('')..shuffle()).join();
    return shuffled != '' ? shuffled : 'yoo';
  }
}
