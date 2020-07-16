import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> category = [
    "Category A",
    "Category B",
    "Category C",
    "Category D",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                category[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: selectedIndex == index ? Colors.black : Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                height: 2,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              )
            ],
          ),
        ),
      );
}
