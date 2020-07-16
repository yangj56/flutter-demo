import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          "Go back Button",
        ),
      )),
    );
  }
}
