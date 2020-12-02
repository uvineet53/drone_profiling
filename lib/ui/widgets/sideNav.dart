import 'package:flutter/material.dart';

Container sideNav(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width / 5,
    color: Colors.green[900],
    child: Column(
      children: <Widget>[
        Expanded(
          child: IconButton(
            icon: Icon(
              Icons.camera,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(
              Icons.map,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home_work_sharp,
                        color: Colors.green[900],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
