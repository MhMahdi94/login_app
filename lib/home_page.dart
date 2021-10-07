import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profile_img = Hero(
      tag: 'hero',
      child: CircleAvatar(
        radius: 72,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/images/app-logo.png'),
      ),
    );

    final welcome = Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 28,
            color: Color(0xff3f1313),
          ),
        ));

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28),
      child: Column(
        children: [profile_img, welcome],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
