import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycards/body_screens/home_screen.dart';
import 'package:mycards/body_screens/notification_screen.dart';
import 'package:mycards/body_screens/profile_screen.dart';
import 'package:mycards/body_screens/search_screen.dart';

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = Duration(milliseconds: 300);

  Animation<double> _animation;
  Animation<Offset> _slideAnimation;
  Animation<double> _menuAnimation;
  AnimationController _controller;

  int selectedIndex = 0;

//  List of functions for Body of the Scaffold
  final List<Widget> navigationOptions = <Widget>[
    HomeScreen(),
    NotificationScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.border_all), Text("Home")),
    NavigationItem(Icon(Icons.notifications_none), Text("Notification")),
    NavigationItem(Icon(Icons.search), Text("Search")),
    NavigationItem(Icon(Icons.person_outline), Text("Profile")),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 220),
      width: isSelected ? 140.0 : 50.0,
      height: 42.0,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25.0))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 15.0),
              IconTheme(
                  data: IconThemeData(
                      size: 24.0,
                      color: isSelected ? Colors.black : Colors.grey[200]),
                  child: item.icon),
              SizedBox(width: 5.0),
              isSelected
                  ? DefaultTextStyle.merge(
                      child: item.title,
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w500))
                  : Container()
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _animation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    _menuAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation =
        Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
            .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    return Scaffold(
      backgroundColor: Color(0xFF4A4A58),
      body: Stack(children: <Widget>[menu(context), dashboard(context)]),
    );
  }

//  Menu starts here
  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile.jpg"),
                  radius: 55.0,
                ),
                SizedBox(height: 20.0),
                Text("Roger Hoffman",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6)),
                SizedBox(height: 5.0),
                Text("San Francisco, CA",
                    style: TextStyle(color: Colors.grey[400], fontSize: 16.0)),
                SizedBox(height: 40.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.dashboard,
                      size: 17.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text("Dashboard",
                        style: TextStyle(color: Colors.white, fontSize: 17.0)),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      size: 17.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 8.0),
                    Text("Messages",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 17.0)),
                    SizedBox(width: 5.0),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 7.0,
                        width: 7.0,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.paperclip,
                      size: 17.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 8.0),
                    Text("Utility Bills",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 17.0)),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.peopleArrows,
                      size: 17.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 8.0),
                    Text("Fund Transfer",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 17.0)),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.building,
                      size: 17.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 8.0),
                    Text("Branches",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 17.0)),
                  ],
                ),
                SizedBox(height: 110.0),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.arrowAltCircleRight,
                      size: 17.0,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 8.0),
                    Text("Log Out",
                        style:
                            TextStyle(color: Colors.grey[300], fontSize: 17.0)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//  Menu ends here

//  Dashboard starts here
  Widget dashboard(context) {
    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.45 * screenWidth,
      right: isCollapsed ? 0 : -0.5 * screenWidth,
      duration: duration,
      child: ScaleTransition(
        scale: _animation,
        child: Material(
            color: Colors.black12,
            borderRadius: isCollapsed
                ? BorderRadius.circular(0.0)
                : BorderRadius.circular(20.0),
            elevation: 8.0,
            child: Container(
              width: screenWidth,
              height: screenHeight,
              child: Scaffold(
                backgroundColor: Colors.transparent,

//                AppBar starts here
                appBar: AppBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  backgroundColor: Colors.black26,
                  elevation: 0.0,
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Icon(Icons.menu, color: Colors.white),
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();
                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        Text("My Cards",
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                        Icon(Icons.add_circle_outline, color: Colors.white)
                      ]),
                ),

//                Body of the Scaffold
                body: navigationOptions.elementAt(selectedIndex),

//                Bottom Navigation Bar of the Scaffold
                bottomNavigationBar: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: isCollapsed
                          ? BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0))
                          : BorderRadius.circular(20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: items.map((item) {
                      var itemIndex = items.indexOf(item);

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = itemIndex;
                          });
                        },
                        child: _buildItem(item, selectedIndex == itemIndex),
                      );
                    }).toList(),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem(this.icon, this.title);
}
