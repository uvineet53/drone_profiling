import 'package:drone_profiling/ui/screens/home.dart';
import 'package:drone_profiling/ui/widgets/sideNav.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Row(
        children: <Widget>[
          homeProfile(context),
          sideNav(context),
        ],
      ),
    );
  }
}
