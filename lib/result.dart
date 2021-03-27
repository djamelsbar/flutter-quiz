import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  Result(this.q);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Done !",
                style: TextStyle(fontSize: 30),
                )
        ),
        TextButton(
          child: Text("Restart the App !") ,
           onPressed:q
          )
      ],
    );
  }
}