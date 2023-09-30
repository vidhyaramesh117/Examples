import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlidableListDemo(),
    );
  }
}
class SlidableListDemo extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Slidable Demo'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: ListTile(
              title: Text(items[index]),
            ),
            actions: [
              IconSlideAction(
                caption: 'Archive',
                color: Colors.blue,
                icon: Icons.archive,
                onTap: () {
                  // Handle archive action
                },
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {
                  // Handle delete action
                },
              ),
            ],
            secondaryActions: [
              IconSlideAction(
                caption: 'More',
                color: Colors.grey.shade200,
                icon: Icons.more_horiz,
                onTap: () {
                  // Handle more action
                },
              ),
            ],
          );
        },
      ),
    );
  }
}