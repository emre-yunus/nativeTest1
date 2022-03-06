import 'package:flutter/material.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
        home: Scaffold(
          body: AppTree(),
          appBar: AppBar(
            title: Center(child: Text("Test 1")),
          ),
        ),
      );
}

class AppTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            child: Container(
              child: Center(
                  child: Text("Main", textScaleFactor: 4,)
              ),
              decoration: BoxDecoration(border: Border.all(color: Colors.black54), color: Colors.white70)
            ),
            onTap: () => print("main"),
          ),
          flex: 3,
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
                child: Center(
                    child: Text("Sub", textScaleFactor: 4,)
                ),
                decoration: BoxDecoration(border: Border.all(color: Colors.black54), color: Colors.white70)
            ),
            onTap: () => print("sub"),
          ),
        ),
      ],
    );
  }
}
