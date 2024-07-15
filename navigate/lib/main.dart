import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: MaterialButton(
        onPressed: (){ 
          Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => SecondPage("Hello World", "Hai", "Bro")));

        },
        color: Colors.blue,
        child: Text("Go to Second Page"),
        )
    );
  }

}

class SecondPage extends StatefulWidget {

  String label = "";
  String valueTwo = "";
  String valueThree = "";

  SecondPage(this.label, this.valueTwo, this.valueThree);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [

            Text(widget.label),
            Text(widget.valueTwo),
            Text(widget.valueThree),

            MaterialButton(
              color: Colors.red,
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Go back (POP)"),)

        ],
        ),
      ),
   );
  }
}