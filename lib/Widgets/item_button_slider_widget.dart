import 'package:flutter/material.dart';

class ItemButtonSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffEFF4FD),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.house,
              color: Color(0xff5FA7E7),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "House",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(
                  0xff44505D,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
