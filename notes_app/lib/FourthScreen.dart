import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Fourth Screen'),
       ),
       body: MyExpansionTile(),
    );
  }
}
class MyExpansionTile extends StatefulWidget {
  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: (){
                Navigator.pushNamed(context, '/list');
            }, child: Text("Go to list screen")),
          ListTile(
            title: Text('Title'),
            trailing: Icon(
              isExpanded ? Icons.expand_less : Icons.expand_more,
              size: 30.0,
            ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
          if (isExpanded)
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'This is the expandable content of the card. You can add any widgets here.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
   
        ],
      ),
    );
  }
}