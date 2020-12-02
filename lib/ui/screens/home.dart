import 'package:flutter/material.dart';

Widget homeProfile(BuildContext context) {
  return Expanded(
    child: Column(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.network(
                  "https://images.unsplash.com/photo-1598519102179-6547728a67b1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 70,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.green[800],
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Drone Profile",
                  style: Theme.of(context).textTheme.display1.apply(
                        color: Colors.white,
                        fontSizeFactor: 1.5,
                        fontWeightDelta: 100,
                      ),
                ),
                Text(
                  "Analyze your soil profile today!",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle
                      .apply(color: Colors.white70),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Last Check",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .apply(color: Colors.white),
                        ),
                        Text(
                          "4 days ago",
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .apply(color: Colors.white70),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CircularProgressIndicator(
                              value: .25,
                              backgroundColor: Colors.green,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.timeline,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "5 Days",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .apply(color: Colors.white),
                        ),
                        Text(
                          "until next check-up",
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .apply(color: Colors.white70),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CircularProgressIndicator(
                              value: .25,
                              backgroundColor: Colors.green,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
