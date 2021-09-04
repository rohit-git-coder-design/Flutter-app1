import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Drawer(
      child: Container(
        color: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Maths",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                accountEmail: Text(
                  "Your Personal Maths Teacher!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.close,
                color: Colors.white,
              ),
              title: Text(
                "Multiplication",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.calculate,
                color: Colors.white,
              ),
              title: Text(
                "Division",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.white,
              ),
              title: Text(
                "Addition",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              title: Text(
                "Subtraction",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
