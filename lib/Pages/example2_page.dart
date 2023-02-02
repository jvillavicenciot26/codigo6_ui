import 'package:codigo6_ui/Widgets/item_button_slider_widget.dart';
import 'package:codigo6_ui/Widgets/item_horizontal_widget.dart';
import 'package:codigo6_ui/Widgets/item_house_slider_widget.dart';
import 'package:flutter/material.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 16.0,
                                    color: Color(0xff349DFD).withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  const Text(
                                    "Location",
                                  ),
                                ],
                              ),
                              const Text(
                                "Purbalingga, Jawa Tengah",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff2B333F),
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Icon(
                                Icons.notifications,
                                size: 26,
                                color: Color(0xffC6C6C6),
                              ),
                              Positioned(
                                top: 3,
                                right: 2,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.7,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            blurRadius: 12.0,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search",
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                          //contentPadding: permite ajustar el contenido a las dimensiones del textfield
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Color(0xff00162D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemButtonSliderWidget(),
                          ItemButtonSliderWidget(),
                          ItemButtonSliderWidget(),
                          ItemButtonSliderWidget(),
                          ItemButtonSliderWidget(),
                          ItemButtonSliderWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Recomendation",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff00162D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemHouseSliderWidget(),
                          ItemHouseSliderWidget(),
                          ItemHouseSliderWidget(),
                          ItemHouseSliderWidget(),
                          ItemHouseSliderWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Recomendation",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xff00162D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ItemHorizontalWidget(),
                    ItemHorizontalWidget(),
                    ItemHorizontalWidget(),
                    ItemHorizontalWidget(),
                    ItemHorizontalWidget(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xff349DFD),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.house,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
