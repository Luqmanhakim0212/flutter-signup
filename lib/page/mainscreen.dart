import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
        }),
        title: Text("Home"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.deepOrangeAccent,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, spreadRadius: 2),
                  ],
                ),
                child: Text(
                  'Hello Deriv!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// TODO Implement this library.