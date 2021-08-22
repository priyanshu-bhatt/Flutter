import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_app/mybotton.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myTodoApp(),
  ));
}

class myTodoApp extends StatelessWidget {
  // Widget myfun(BuildContext context) {
  // return Container(
  //   color: Colors.brown,
  //    child: Column(
  //      children: [Text("Hello I am Children")],
  //    ),
  //  );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("I am Clicked");
          showModalBottomSheet(context: context, builder: (context) => MyB());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.brown,
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 38,
              ),
              radius: 30,
              backgroundColor: Colors.amberAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "TODO App",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "20 Tasks Done",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 2.0,
                    ),
                    Card(
                      child: ListTile(
                        trailing: Checkbox(
                          value: true,
                          onChanged: null,
                        ),
                        title: Text("My First Todo"),
                        subtitle: Text("Do it on Friday"),
                      ),
                    )
                  ],
                ),
                //height: 600,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
