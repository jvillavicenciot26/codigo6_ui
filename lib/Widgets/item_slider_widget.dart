import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      //color: Colors.amber,
      //constraints: Limita dimensiones del container y tambien de los hijos
      constraints: BoxConstraints(
        maxWidth: width * 0.38,
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.38,
            height: height * 0.16,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://www.google.com/maps/d/thumbnail?mid=13IYrgrFrK9-boNLBbSS-mpOGZTQ",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Blok C Benyamin asdasddasdasdsd",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff2A4055),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Av. Limas 123 - Cayma - Arequipa",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff2A4055).withOpacity(0.7),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Open",
                      style: TextStyle(
                        color: Color(0xff43B995),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "07:00 - 22:00",
                      style: TextStyle(
                        color: Color(0xff2A4055).withOpacity(0.7),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
