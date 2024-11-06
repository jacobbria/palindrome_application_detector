import 'package:flutter/material.dart';
import '../widget/previousTable.dart';

class PreviousPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Previous Records")),
      ),
      body: Center(
        child: Container(
          child: PreviousTable(),
        ),
      )
    );
  }


}
