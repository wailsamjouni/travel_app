import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_clone_app/models/hotel_model.dart';

class HotelBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Hotels",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.4),
              ),
              GestureDetector(
                onTap: () {
                  print("See All");
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            itemCount: hotels.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 250.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 3.0,
                      child: Container(
                        height: 120.0,
                        width: 240.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                hotel.name,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              ),
                              SizedBox(height: 3.0),
                              Text(hotel.address,
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 3.0),
                              Text(
                                '\$${hotel.price} /night',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(hotel.imageUrl),
                          width: 230.0,
                          height: 180.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
