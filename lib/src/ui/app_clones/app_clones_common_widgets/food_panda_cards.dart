import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_card_texts.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.cardText,
    required this.cardWidth,
    required this.cardHeight,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor = const Color.fromRGBO(215, 15, 100, .9);
  final Image backgroundImage = Image.asset('assets/images/characters/boo.png');
  final CardTextBoxes cardText;
  final double cardWidth;
  final double cardHeight;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            //padding inside the card
            padding: const EdgeInsets.all(14),
            child: Stack(
              children: <Widget>[
                backgroundImage,
                Container(
                  child: cardText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
