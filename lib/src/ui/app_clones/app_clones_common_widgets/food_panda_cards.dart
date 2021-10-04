import 'package:flutter/material.dart';

Card customCard() {
  return Card(
    color: const Color.fromRGBO(215, 15, 100, .9),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Food delivery",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Order food you love',
                      style: TextStyle(
                        letterSpacing: .5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  height: 120,
                  child: Image.asset('assets/images/characters/boo.png')),
            ),
          ],
        ),
      ),
    ),
  );
}
