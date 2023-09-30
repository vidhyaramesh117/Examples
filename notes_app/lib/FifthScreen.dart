import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  List<String> itemList = ["Item 1", "Item 2", "Item 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Screen'),
      ),
      body: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (BuildContext context, int index) {
            // Create your item widget based on the current index
            return ListTile(
              title: Text(itemList[index]),
              // Add any other widget components as needed
            );
          },
        )
    );
  }
}