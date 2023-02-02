import 'package:flutter/material.dart';

class CameraExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/48/84/59/48845968d25421613da1eff662ee9051.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: width * 0.1,
                height: width * 0.1,
                decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.chevron_left,
                  size: height * 0.04,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: width * 0.2,
                  height: width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff919192),
                  ),
                ),
                Container(
                  width: width * 0.1,
                  height: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
