import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    //creates a container of height 100 with a padding on the right and left sides.
    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      color: Colors.green,
      //The contents of the container are in a Row widget.
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),

          //The things in the Expanded get expanded to fill as much space as possible.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //organizes the contents in a Column.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            //The center widget centers its contents.
            child: Center(
              child: Text('Hello, world!'),
            ),
          )
        ],
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(title: 'Flutter Tutorial', home: TutorialHome()));
  // runApp(MaterialApp(
  //   title: 'My App',
  //   home: MyScaffold(),
  // ));
}
