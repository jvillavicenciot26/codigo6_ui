import 'package:flutter/material.dart';

class ItemGalleryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 14.0, top: 14),
      width: width * 0.25,
      height: width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            "https://www.todoscontraelcanon.es/wp-content/uploads/2022/07/interior-casa-de-lujo.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
