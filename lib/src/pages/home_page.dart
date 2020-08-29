import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(19, 15, 31, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 30),
            _createButton('basic', 'First design', context),
            _createButton('scroll', 'Second design', context),
            _createButton('buttons', 'Third design', context),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  _createButton(String page, String text, BuildContext context) {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(text, style: TextStyle(fontSize: 25)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '$page');
            },
          ),
        ),
      ),
    );
  }
}