import 'package:flutter/material.dart';

class ItemHorizontalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.085,
            width: width * 0.18,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(14.0),
              image: DecorationImage(
                image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/842/546/HD-wallpaper-mansion-architecture-houses-luxury.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Padanaran House",
                style: TextStyle(
                  color: Color(0xff747474),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 17,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xff8A909A),
                    size: 14,
                  ),
                  Text(
                    "Padamora, Jawa Tengah",
                    style: TextStyle(
                      color: Color(0xffBEC0C5),
                      fontSize: 13,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
