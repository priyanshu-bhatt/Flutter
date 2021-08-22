import 'package:flutter/material.dart';

class MyB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              "Add Tasks",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.yellow,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            TextButton(
              onPressed: null,
              child: Text(
                "Add me",
                style: TextStyle(
                  backgroundColor: Colors.yellow,
                  color: Colors.brown,
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
