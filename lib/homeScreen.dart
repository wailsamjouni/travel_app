import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_clone_app/widgets/destination.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<IconData> listIcon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget createIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.black : Color(0xFF696565),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(listIcon[index],
            size: 24.0, color: Theme.of(context).accentColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 125.0),
              child: Text(
                "What would you like to search",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: listIcon
                  .asMap()
                  .entries
                  .map(
                    (MapEntry mapEntry) => createIcon(mapEntry.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Destination(),
          ],
        ),
      ),
    );
  }
}
