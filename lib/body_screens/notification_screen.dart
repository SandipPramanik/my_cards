import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 225.0,
          width: 200.0,
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.grey[200],
                    size: 160.0,
                  )),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white,
                      )),
                  child: Center(
                      child: Text(
                    "0",
                    style: TextStyle(fontSize: 30.0, color: Colors.grey[200]),
                  )),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40.0,
                  child: Text(
                    "No Notifications Yet!",
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[200]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
