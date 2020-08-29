import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final subtitleStyle = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [_createImage(), _createMainTitle(), _createActions(), _createDescription(), _createDescription(), _createDescription()],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://s2.best-wallpaper.net/wallpaper/2880x1800/1804/Two-hot-air-balloons-mountains-sky_2880x1800.jpg'),
    );
  }

  Widget _createMainTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Imágen de dos globos', style: titleStyle),
                  SizedBox(height: 7),
                  Text('Paisaje de dos globos volando', style: subtitleStyle)
                ],
              ),
            ),
            Icon(Icons.ac_unit, color: Colors.red, size: 30),
            Text('41')
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      _createSingleAction(Icons.call, 'CALL'),
      _createSingleAction(Icons.near_me, 'ROUTE'),
      _createSingleAction(Icons.share, 'Share'),
    ]
    );
  }

  Widget _createSingleAction(IconData icon, String text) {

    return Column(
        children: [
          Icon(icon, color: Colors.blue, size:40),
          SizedBox(height: 5),
          Text('$text', style: TextStyle(fontSize: 15, color: Colors.blue),)
        ],
      );
  }

  Widget _createDescription() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
