import 'package:flutter/material.dart';
import 'ThirdScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartIcon extends StatelessWidget {
  final double size;
  final Color color;

  HeartIcon({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      size: size,
      color: color,
    );
  }
}
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Third Screen'),
       actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
      ],),
      body: Column(
        children: <Widget>[
          Text('This is the Third Screen'),
          FaIcon(
            FontAwesomeIcons.solidStar, // Use a Font Awesome icon
            size: 48.0,
            color: Colors.yellow,
          ),
          ElevatedButton(
            onPressed: () {
              // Show the alert dialog when the button is pressed
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // Return the AlertDialog widget
                  return AlertDialog(
                    title: Text('Alert Dialog Title'),
                    content: Text('This is the content of the alert dialog.'),
                    actions: <Widget>[
                      // Define buttons for the alert dialog
                      TextButton(
                        onPressed: () {
                          // Close the dialog
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Alert'),
          ),
            
          
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
          HeartIcon(
            size: 48.0,
            color: Colors.red,
          ),
          ElevatedButton(
            onPressed: (){
              showDialog(
              context: context,
              builder: (BuildContext context) {
              return SimpleDialog(
                title: Text('Select an Option'),
                children: <Widget>[
                SimpleDialogOption(
                onPressed: () {
                  print("Option 1 selected");
                },
            child: Text('Option 1'),
        ),
        SimpleDialogOption(
          onPressed: () {
            print("Option 2 selected");
          },
          child: Text('Option 2'),
        ),
      ],
    );
  },
);
            }, 
          child: Text("Show simple dialog")
          ),
          ElevatedButton(onPressed: (){
              showModalBottomSheet(
  context: context,
  builder: (BuildContext context) {
    return Container(
      child: Text('BottomSheet content goes here'),
    );
  },
);
          },
          child: Text("Bottom sheet"),
          ),
         
// Dialog shape and style

ElevatedButton(onPressed: (){
  showDialog(
  context: context,
  builder: (BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text('Customized Dialog'),
      ),
    );
  },
);
}, child: Text("Shape and style")),
  
// Custom buttons

ElevatedButton(
  onPressed: () {
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Custom Dialog with Buttons'),
        content: Text('Customize buttons here.'),
        actions: <Widget>[
          TextButton(
            child: Text('Custom Button 1'),
            onPressed: () {
              // Handle button 1 action
            },
          ),
          TextButton(
            child: Text('Custom Button 2'),
            onPressed: () {
              // Handle button 2 action
            },
          ),
        ],
      );
    },
);
},
  child: Text("Show custom button"),
),

// Theming
ElevatedButton(
  onPressed: () {
    showDialog(
  context: context,
  builder: (BuildContext context) {
    return Theme(
      data: ThemeData(
        // Customize your theme here
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      child: AlertDialog(
        title: Text('Themed Dialog'),
        content: Text('Customized theme here.'),
        actions: <Widget>[
            TextButton(
            child: Text('OK'),
            onPressed: () {
              // Handle the action
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  },
);
  },
  child: Text("Theming Button"),
),

ElevatedButton(
  onPressed: (){
      Navigator.pushNamed(context, '/fourth');
  }, child: Text("Go to fourth screen")),

ElevatedButton(
  onPressed: (){
      Navigator.pushNamed(context, '/chart');
  }, child: Text("Go to chart screen")),

ElevatedButton(
  onPressed: (){
      Navigator.pushNamed(context, '/slidable');
  }, child: Text("Go to slidable")),
  ElevatedButton(
  onPressed: (){
      Navigator.pushNamed(context, '/fifth');
  }, child: Text("Lazy Loading")),
],
      ),
    );
  }
}
