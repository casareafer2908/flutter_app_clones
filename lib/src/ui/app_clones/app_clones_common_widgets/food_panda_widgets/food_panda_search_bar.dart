import 'package:flutter/material.dart';

class FoodPandaSearchBar extends StatelessWidget {
  const FoodPandaSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextField(
                readOnly: true,
                showCursor: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'Search for shops & restaurants',
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(215, 15, 100, 1),
                  ),
                  // labelText: "Describe Your Issue...",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
