import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_clone_app/widgets/destination_bar.dart';
import 'package:travel_clone_app/widgets/hotel_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
  int currentSelectedIndex = 0;

  List<IconData> listIcon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget createIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: isSelected == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EbEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(listIcon[index],
            size: 24.0,
            color: isSelected == index
                ? Theme.of(context).primaryColor
                : Color(0xFFB4C1C4)),
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
                "What would you like to search ?",
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
            DestinationBar(),
            SizedBox(height: 20.0),
            HotelBar(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentSelectedIndex,
        onTap: (int value) {
          setState(() {
            currentSelectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 29.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 29.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(
                  'https://z5b2s6y7.rocketcdn.me/wp-content/uploads/2018/06/avatar.png'),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
