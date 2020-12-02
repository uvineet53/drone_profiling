import 'package:drone_profiling/ui/screens/cam.dart';
import 'package:drone_profiling/ui/screens/home.dart';
import 'package:drone_profiling/ui/screens/maps.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<Color> btnColor = [
    Colors.green[900],
    Colors.green[900],
    Colors.white,
  ];

  List<Color> iconColor = [
    Colors.white,
    Colors.white,
    Colors.green[900],
  ];

  toggleColors(index) {
    setState(() {
      _selectedTab = index;
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

  int _selectedTab = 0;
  List<Widget> homeWidget = [
    HomeProfile(),
    MapTracking(),
    Cam(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Row(
        children: <Widget>[
          homeWidget[_selectedTab],
          Container(
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
          ),
        ],
      ),
    );
  }
}
