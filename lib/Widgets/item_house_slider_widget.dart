import 'package:codigo6_ui/Pages/detail_example2_page.dart';
import 'package:flutter/material.dart';

class ItemHouseSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => DetailExample2(),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(right: 12.0, bottom: 12.0, top: 12.0),
        constraints: BoxConstraints(
          maxWidth: width * 0.6,
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
        child: Column(
          children: [
            Container(
              //width: width * 0.55,
              height: height * 0.16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "http://planosdecasasmodernas.com/wp-content/uploads/2016/08/Modelos-de-casas-de-lujo.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Minimalist House",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff00162D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 17,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff00162D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$734",
                          style: TextStyle(
                            color: Color(0xff55ADFB),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "/Month",
                          style: TextStyle(
                            color: Color(0xffBEC0C5),
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.bookmark,
                    size: 25.0,
                    color: Color(0xff8A909A),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
