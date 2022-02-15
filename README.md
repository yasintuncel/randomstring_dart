# Simple Random String
 Simple, random string generator

## Installation
```bash
flutter pub add randomstring_yt

or add to

dependencies:
  randomstring_yt: ^0.0.1
```

## Features

  * Lower characters
  * Upper characters
  * Numbers
  * Customizable special characters
  * Repeatable or not, special characters

### options and defaults

```dart
String getRandomString({
  int lowersCount = 3,
  int uppersCount = 3,
  int numbersCount = 3,
  int specialsCount = 1,
  String specials = '_',
  bool canSpecialRepeat = true,
}){...}

```

### basic usage

```dart
import 'package:randomstring_yt/randomstring_yt.dart';

final rs = RandomString();
String result = rs.getRandomString();

print(result);
// 10 characters
// 3E_ire7CB1
```

## options

```dart
import 'package:randomstring_yt/randomstring_yt.dart';

final rs = RandomString();
String result = rs.getRandomString(
  uppersCount: 10,
  lowersCount: 10,
  numbersCount: 10,
  specialsCount: 2,
  specials: '_-=!=',
);

print(result);
// 32 characters
// 78QW1_kJGgpCkg0Dm17SH0ycgCS9=7l0
```

## special not repeat

```dart
import 'package:randomstring_yt/randomstring_yt.dart';

final rs = RandomString();
String result = rs.getRandomString(
    specialsCount: 4,
    canSpecialRepeat: false,
    specials: '_-!.'
);

print(result);
// output: 4-d13.M_gDz!Z
```

---
***|`NOTE`|***
if all options are set to 0 then the output will be 'yoo'

## License

  [MIT](LICENSE)