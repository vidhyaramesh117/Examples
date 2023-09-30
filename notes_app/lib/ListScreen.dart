import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('List Screen'),
       ),
      body: HorizontalList(items: items),
      //  body: MyExpansionTile(),
    );
  }
}
class HorizontalList extends StatelessWidget {
  final List<String> items;

  HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 150.0, // Adjust the width as needed
          child: Container(
            margin: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}