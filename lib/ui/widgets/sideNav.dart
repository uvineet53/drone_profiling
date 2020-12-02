import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  @override
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  List<Color> btnColor = [Colors.white, Colors.green[900], Colors.white];
  List<Color> iconColor = [Colors.green[900], Colors.white, Colors.green[900]];

  toggleColors(index) {
    setState(() {
      iconColor[index] != Colors.green[900]
          ? iconColor[index] = Colors.green[900]
          : iconColor[index] = Colors.white;
      btnColor[index] == Colors.white
          ? btnColor[index] = Colors.green[900]
          : btnColor[index] = Colors.white;
    });
    for (int i = 0; i < btnColor.length; i++) {
      if (i != index) {
        setState(() {
          iconColor[i] = Colors.white;
          btnColor[i] = Colors.green[900];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: Colors.green[900],
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                toggleColors(2);
              },
              child: Container(
                width: 100,
                color: btnColor[2],
                child: Icon(
                  Icons.camera,
                  color: iconColor[2],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                toggleColors(1);
              },
              child: Container(
                width: 100,
                color: btnColor[1],
                child: Icon(
                  Icons.map,
                  color: iconColor[1],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                toggleColors(0);
              },
              child: Container(
                width: 100,
                color: btnColor[0],
                child: Icon(
                  Icons.home,
                  color: iconColor[0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
