import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/contract/HomeContract.dart';
import 'package:flutter_tic_tac_toe/presenter/home_presenter.dart'; //imported flutter material package

class HomePage extends StatefulWidget{ // creating a stateful widget
  @override
  State createState() => new HomePageState(); // creating the state
}

class HomePageState extends State<HomePage> implements HomeContract{
  var ansStr='0';

  HomePresenter presenter;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar( //defines the content of the Appbar
          title: new Text("Calculator"),
        ),
        body: Container(
          child: Column( //Since we have multiple children arranged vertically, we are using column
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equal vertical space between all the children of column
            children: <Widget>[ // the column widget uses the children property
              Container( // Display Container
                constraints: BoxConstraints.expand( // Creating a boxed container
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0,
                ),
                alignment: Alignment.bottomRight, // Aligning the text to the bottom right of our display screen
                color: Colors.white, // Seting the background color of the container
                child: Text(
                  ansStr,
                  style: TextStyle( // Styling the text
                      fontSize: 50.0,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[// using
                  _button("9", presenter.nine),// custom widget _button
                  _button("8", presenter.eight),
                  _button("7", presenter.seven),
                  _button("+", presenter.add)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[// using
                  _button("6", presenter.six),// custom widget _button
                  _button("5", presenter.five),
                  _button("4", presenter.four),
                  _button("-", presenter.sub)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[// using
                  _button("3", presenter.three),// custom widget _button
                  _button("2", presenter.two),
                  _button("1", presenter.one),
                  _button("*", presenter.mul)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("C", presenter.clear), // using custom widget _button
                  _button("0", presenter.zero),
                  _button("=", presenter.disp),
                  _button("/", presenter.div),
                ],
              ),
            ],
          ),
        )
    );
  }
  Widget _button (String number, Function() f){ // Creating a method of return type Widget with number and function f as a parameter
    return MaterialButton(
      height: 100.0,
      child: Text(number,
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.black,
      color: Colors.amber[100],
      highlightColor: Colors.blue,
      onPressed: f,
    );
  }


  @override
  void updateAnswerState(String answer) {
    setState(() {
      ansStr = answer;
    });
  }

  @override
  void initState() {
    presenter = new HomePresenter(this);// creating the widget

  }

}