import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200.0,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile.jpg"),
                  radius: 70.0,
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 35.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey[500],
                        size: 20.0,
                      ),
                      Text(
                        "Change Photo",
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 16.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Name",
            style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Roger Hoffman",
                style: TextStyle(color: Colors.grey[200], fontSize: 18.0),
              ),
              Icon(
                FontAwesomeIcons.pencilAlt,
                color: Colors.grey[500],
                size: 18.0,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Divider(
            color: Colors.grey[600],
          ),
          SizedBox(height: 10.0),
          Text(
            "Address",
            style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "San Francisco",
                style: TextStyle(color: Colors.grey[200], fontSize: 18.0),
              ),
              Icon(
                FontAwesomeIcons.pencilAlt,
                color: Colors.grey[500],
                size: 18.0,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Divider(
            color: Colors.grey[600],
          ),
          SizedBox(height: 10.0),
          Text(
            "Profession",
            style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "CA",
                style: TextStyle(color: Colors.grey[200], fontSize: 18.0),
              ),
              Icon(
                FontAwesomeIcons.pencilAlt,
                color: Colors.grey[500],
                size: 18.0,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Divider(
            color: Colors.grey[600],
          )
        ],
      ),
    );
  }
}
