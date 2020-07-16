import 'package:demo_flutter/components/category.dart';
import 'package:demo_flutter/model/models/common.dart';
import 'package:demo_flutter/screen/detail.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Text(
            "Object",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Category(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            itemCount: listOfCommons.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 25, crossAxisSpacing: 25),
            itemBuilder: (context, index) => Card(),
          ),
        ))
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Common cardItem;

  const Card({
    Key key,
    this.cardItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Image.asset("assets/moon.png"),
      ),
    );
  }
}
