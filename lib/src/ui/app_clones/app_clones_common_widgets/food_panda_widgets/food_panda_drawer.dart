import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPandaDrawer extends StatelessWidget {
  const FoodPandaDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromRGBO(240, 240, 240, .40);
      }
      return Colors.red;
    }

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //top android status bar padding
          SizedBox(
            height: MediaQuery.of(context).padding.top,
            child: Container(color: const Color.fromRGBO(215, 15, 100, 1)),
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Container(
                  color: const Color.fromRGBO(215, 15, 100, 1), height: 180),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.resolveWith(getColor)),
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Log in / Create account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextButton.icon(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(getColor)),
              icon: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.help_outline,
                  color: Colors.pink,
                ),
              ),
              onPressed: () {},
              label: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Help center',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextButton.icon(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(getColor)),
              icon: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.wallet_giftcard,
                  color: Colors.pink,
                ),
              ),
              onPressed: () {},
              label: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Invite friends',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(height: 1, color: Colors.black12),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(getColor)),
              onPressed: () {},
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(getColor)),
              onPressed: () {},
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Terms & Conditions / Privacy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
