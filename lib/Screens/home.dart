import 'package:flutter/material.dart';
import 'package:palindrome_application_detector/Screens/results.dart';
import '/models/utilities/PalindromeChecker.dart';


class Home extends StatefulWidget {
  const Home({super.key});

@override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  // controller for text input //
  final TextEditingController _controller = TextEditingController();
  // instance of Palindrome Checker
  Palindromechecker checker = Palindromechecker();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _printInput(String input){
    checker.inChecker(input);
   // print("INPUT: $input");
    _controller.clear();

    Navigator.of(context)
    .push(MaterialPageRoute(builder:
    (context) => ResultsPage(results: checker.getResults())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.amber,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Previous Words"),
            ],
          ),
        )
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                //color: const Color.fromARGB(255, 207, 149, 110),
                height: 100,
                width: 1000,
                child: Center(
                  child: Text(
                    "IS IT A PALINDROME?",
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
             //   color: Colors.yellow,
                height: 48,
                width: 800,
                child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                    labelText: 'Enter word here...',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon:IconButton(onPressed: () {
                      _printInput(_controller.text);
                      
                    }, icon: const Icon(
                      Icons.search
                     )
                    ), 
                    border: const OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    _printInput(value);
                  },
                ),
              ),
               const SizedBox(
                //color: const Color.fromARGB(255, 194, 222, 195),
                height: 100,
                width: 800,
                child: Text(
                  "*numbers and symbol will be ignored      *spaces will be removed",
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

 