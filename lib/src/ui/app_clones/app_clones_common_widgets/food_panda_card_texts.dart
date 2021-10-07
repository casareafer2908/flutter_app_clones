import 'package:flutter/material.dart';

class CardTextBoxes extends StatelessWidget {
  const CardTextBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            "Food",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Order",
            style: TextStyle(
              letterSpacing: .5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
