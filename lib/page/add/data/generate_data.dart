import 'dart:math';

import 'package:ad_extension/ad_extension.dart';

class GenerateData {

  final _numbers = "1234567890";
  final _chars = "abcdefghijklmnopqrstuvwxyz";
  final _uppercaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  final _specialCharacters = ",.@!%*#_?&^*";

  String generate({
    int count = 8,
    bool isChar = true,
    bool isNumber = true,
    bool isUppercaseLetter = true,
    bool isSpecialCharacters = true,
  }) {
    if(count < 4) return "";
    var password = "";
    var charMaxCount = count;
    var numberCount = 0;
    var specialCount = 0;
    if(isUppercaseLetter) charMaxCount -= 1;
    if(isNumber) charMaxCount -= 1;
    if(isSpecialCharacters) charMaxCount -= 1;
    var charCount = charMaxCount.random;
    if(charCount <= 0) charCount = 1;
    var randomChar = List.generate(charCount, (index) => _chars[Random().nextInt(_chars.length)]).join();
    print("charCount: $charCount  randomChar: $randomChar");
    password = randomChar;
    if(isNumber){
     var numberMaxCount = count - charCount;
      print(numberMaxCount);
      if(isSpecialCharacters || isUppercaseLetter){
        if(isUppercaseLetter){
          numberMaxCount -= 1;
        }
        if(isSpecialCharacters){
          numberMaxCount -= 1;
        }
        numberCount = numberMaxCount.random;
      } else {
        numberCount = numberMaxCount;
      }
     if(numberCount <= 0) numberCount = 1;
      var randomNumber = List.generate(numberCount, (index) => _numbers[Random().nextInt(_numbers.length)]).join();
      print("numberCount: $numberCount  randomNumber:$randomNumber");
      password += randomNumber;
    }
    if(isSpecialCharacters){
      var specialMaxCount = count - charCount - numberCount;
      if(isUppercaseLetter){
        specialMaxCount -= 1;
        specialCount = specialMaxCount.random;
      } else{
        specialCount = specialMaxCount;
      }
      if(specialCount <= 0) specialCount = 1;
      print(specialCount);
      var randomSpecial = List.generate(specialCount, (index) => _specialCharacters[Random().nextInt(_specialCharacters.length)]).join();
      print("specialCount: $specialCount  randomSpecial:$randomSpecial");
      password += randomSpecial;
    }

    if(isUppercaseLetter){
      var uppercaseLetter = count - numberCount - charCount - specialCount;
      // var uppercaseLetterCount = uppercaseLetter.random;
      var randomUppercaseLetters = List.generate(uppercaseLetter, (index) => _uppercaseLetters[Random().nextInt(_uppercaseLetters.length)]).join();
      print("uppercaseLetterCount: $uppercaseLetter  randomUppercaseLetters:$randomUppercaseLetters");
      password += randomUppercaseLetters;
    }

    print(password);

    return password;
  }
}
