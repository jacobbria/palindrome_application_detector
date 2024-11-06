import 'package:flutter/material.dart';
import '../models/entry.dart';

class EntryHolder {

  static Map<int, Entry> database =  <int, Entry>{}; 

  static int databaseSize = 0;

  static void enterEntry(String word, bool wasPalindrome){

    //print("In EntryHolder enterEntry!");

    Entry newEntry = Entry(word, wasPalindrome);

    databaseSize++;
    int id = databaseSize;

    database[id] = newEntry;
  }

  static Map<int, Entry> getDatabase(){
    return database;
  }

  static List<Entry> getEntries(){
    List<Entry> entries = [];

    database.forEach((key, value){
      entries.add(value);
    });

    return entries;
  }


}