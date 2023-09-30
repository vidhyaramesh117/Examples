import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Column(
          children: [
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2, // Number of columns
                itemCount: 3, // Number of items
                itemBuilder: (BuildContext context, int index) => Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Item $index'),
                  ),
                ),
                staggeredTileBuilder: (int index) => StaggeredTile.count(
                  index == 0 ? 2 : 1, // Width factor for item 0 is 2, others are 1
                  index == 0 ? 2 : 1, // Height factor for item 0 is 2, others are 1
                ),
                mainAxisSpacing: 4.0, // Space between rows
                crossAxisSpacing: 4.0, // Space between columns
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Go to Third Screen'),
            ),
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
    );
  }
}
