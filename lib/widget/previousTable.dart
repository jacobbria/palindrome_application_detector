import 'package:flutter/material.dart';
import 'package:palindrome_application_detector/models/entryHolder.dart';
import '../models/entry.dart';

class PreviousTable extends StatefulWidget{
  @override
  _PreviousTableState createState() => _PreviousTableState();
}

class _PreviousTableState extends State<PreviousTable> {
  final columns = ['Word', 'Result'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DataTable(
        
        columns: getColumns(columns),
        rows: getRows(),
      ),
    );
  }
  
  List<DataColumn> getColumns(List<String> columns) {
    return columns
        .map((column) => DataColumn(label: Text(column)))
        .toList(); // Convert the Iterable to a List
  }
  
  List<DataRow> getRows() {
    List<Entry> entries = EntryHolder.getEntries();

    return entries.map((entry){
      return DataRow(cells: [
        DataCell(Text((entry.word ?? "Error..."))),
        DataCell(Text(entry.wasPalindrome.toString())),
      ]);
    }).toList();
  }
}