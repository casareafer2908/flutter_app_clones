import 'package:flutter/material.dart';

class CardTextBoxes extends StatelessWidget {
  const CardTextBoxes({
    Key? key,
    required this.cardHeaderText,
    required this.cardBodyText,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String cardHeaderText;
  final Color textColor;
  final String cardBodyText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            cardHeaderText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
              color: textColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            cardBodyText,
            style: TextStyle(
              letterSpacing: .5,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
