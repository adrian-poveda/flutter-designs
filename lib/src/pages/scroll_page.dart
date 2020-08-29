import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_page1(), _page2()],
    ));
  }

  Widget _page1() {
    return Stack(
      children: [
        //Primeros más al fondo
        _colorBackground(),
        _imageBackground(),
        _createInfopage()
      ],
    );
  }

  _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(19, 15, 31, 1),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text('Welcome', style: TextStyle(fontSize: 40)),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _colorBackground() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey);
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/hxh2.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createInfopage() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('11°C', style: TextStyle(color: Colors.white, fontSize: 56)),
          Text('Saturday', style: TextStyle(color: Colors.white, fontSize: 56)),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
        ],
      ),
    );
  }
}
