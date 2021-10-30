import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  final int a = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B.C.A. First Sem. Notes"),
      ),
      body: Center(
          child: Container(
        child: Text ('welcome'),
      )),
      drawer: Drawer(),
    );
  }
}
