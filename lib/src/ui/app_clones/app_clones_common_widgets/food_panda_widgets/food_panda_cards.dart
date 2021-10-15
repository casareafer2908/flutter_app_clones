import 'package:flutter/material.dart';
import 'package:flutter_app_clones/src/ui/app_clones/app_clones_common_widgets/food_panda_widgets/food_panda_card_texts.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.cardText,
    required this.cardWidth,
    required this.cardHeight,
    required this.onTap,
    required this.backgroundImage,
    this.backgroundColor = const Color.fromRGBO(215, 15, 100, .9),
  }) : super(key: key);
  final Color backgroundColor;
  final CardTextBoxes cardText;
  final double cardWidth;
  final double cardHeight;
  final VoidCallback onTap;
  final Image backgroundImage;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  //final Image backgroundImage = Image.asset('assets/images/characters/boo.png');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: cardHeight,
      // width: cardWidth,
      child: Card(
        color: widget.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: widget.onTap,
          child: Padding(
            //padding inside the card
            padding: const EdgeInsets.all(14),
            child: Stack(
              children: <Widget>[
                widget.backgroundImage,
                Container(
                  child: widget.cardText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
