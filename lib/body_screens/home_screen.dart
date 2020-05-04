import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget myCards = new Container(
    width: 350.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.blue[700],
    ),
    child: Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 85.0),
            child: Text(
              "BankX",
              style: TextStyle(
                  fontSize: 100.0,
                  color: Colors.blue[600],
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Current Balance",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[300]),
                  ),
                  Text(
                    "BankX",
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 3.0),
              Text(
                "\$12,432.32",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              SizedBox(height: 22.0),
              Text(
                "**** **** **** 1505",
                style: TextStyle(
                    fontSize: 22.0, color: Colors.white, letterSpacing: 3.5),
              ),
              SizedBox(height: 22.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Card Holder",
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.grey[300]),
                      ),
                      Text(
                        "Laurel Bailey",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Expiry",
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.grey[300]),
                      ),
                      Text(
                        "05/23",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage("images/mastercard.png"),
                    height: 38.0,
                    width: 38.0,
                    color: Colors.grey[200],
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          Container(
            height: 240.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
            padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 15.0),
                myCards,
                SizedBox(width: 10.0),
                myCards,
                SizedBox(width: 10.0),
                myCards,
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Transactions",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.compare_arrows,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              SingleTransaction(
                icon: FontAwesomeIcons.apple,
                title: "Macbook Pro 15\"",
                subtitle: "Apple",
                amount: "-2499 \$",
                color: Colors.red,
              ),
              SingleTransaction(
                icon: FontAwesomeIcons.download,
                title: "Incoming Transfer",
                subtitle: "Upwork",
                amount: "+499 \$",
                color: Colors.green,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Yesterday",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              SingleTransaction(
                icon: FontAwesomeIcons.apple,
                title: "Airpods 2nd Gen",
                subtitle: "Apple",
                amount: "-199 \$",
                color: Colors.red,
              ),
              SingleTransaction(
                icon: FontAwesomeIcons.coffee,
                title: "Coffee",
                subtitle: "Starbucks",
                amount: "-19.50 \$",
                color: Colors.red,
              ),
              SingleTransaction(
                icon: FontAwesomeIcons.userFriends,
                title: "Money Transfer",
                subtitle: "Friend Daniel",
                amount: "+300 \$",
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SingleTransaction extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final Color color;

  SingleTransaction(
      {this.icon, this.title, this.subtitle, this.amount, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10.0)),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.grey[200],
              size: 20.0,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
                ),
              ],
            ),
            trailing: Text(
              amount,
              style: TextStyle(
                  fontSize: 16.0, color: color, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
