import 'package:flutter/material.dart';

class CardTextBoxes extends StatelessWidget {
  const CardTextBoxes({
    Key? key,
    required this.cardHeaderText,
    required this.cardBodyText,
  }) : super(key: key);

  final String cardHeaderText;
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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            cardBodyText,
            style: const TextStyle(
              letterSpacing: .5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
