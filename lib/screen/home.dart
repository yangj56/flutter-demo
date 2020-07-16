import 'package:demo_flutter/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/home.svg"), onPressed: () {}),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/settings.svg",
              color: Colors.red[300],
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Body(),
    );
  }
}
