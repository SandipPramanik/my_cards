import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hello Roger!\nHow can I help you?",
            style: TextStyle(color: Colors.grey[300], fontSize: 25.0),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      "Tap here to Search",
                      style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
