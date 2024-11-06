// ignore_for_file: unused_import
import 'dart:ffi';
import 'package:flutter/material.dart';


class Palindromechecker {

String word = '';
bool isPalindrome = false;

Palindromechecker(){
  word =  '';
  isPalindrome = false;
}

bool getResults() => isPalindrome;

void inChecker(String input){
 // print("In checker - input: $input");
  normalizeInput(input);
}

void normalizeInput(String input){

String cleanedString = input.replaceAll(RegExp(r'[^a-zA-Z]'), '');
//print("After cleaning: $cleanedString");

palindromCheck(cleanedString);
}


void palindromCheck(String cleanedString) {

  List<String> letters = cleanedString.split('');

  int left = 0;
  int right = letters.length-1;
  bool isP = true;

  while (left < right){
    if (letters[left] != letters[right]){
      isP = false;
      break;
    }
  left++;
  right--;
  }


 this.isPalindrome = isP;
  
print("BOOL: $isP");
}


}