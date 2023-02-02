import 'package:codigo6_ui/Pages/camera_example2.dart';
import 'package:codigo6_ui/Widgets/item_gallery_widget.dart';
import 'package:flutter/material.dart';

class DetailExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            color: Color(0xff555273),
          ),
        ),
        title: const Text(
          "Details",
          style: TextStyle(
            color: Color(0xff54516D),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffF9FBFC),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        "http://planosdecasasmodernas.com/wp-content/uploads/2016/08/Modelos-de-casas-de-lujo.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Minimal House",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16.0,
                            ),
                            Text(
                              "4.5",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "\$734",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "/Month",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: width * 0.12,
                                height: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Color(0xffF8F8F8),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Icon(
                                Icons.bed_rounded,
                                size: width * 0.08,
                                color: Color(0xff349DFD),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                Text(
                                  "Bedroom",
                                  style: TextStyle(
                                    color: Color(0xffC7C9CD),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "5 Rooms",
                                  style: TextStyle(
                                    color: Color(0xff3E4753),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: width * 0.12,
                                height: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Color(0xffF8F8F8),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Icon(
                                Icons.bathroom,
                                size: width * 0.08,
                                color: Color(0xff349DFD),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                Text(
                                  "Bathroom",
                                  style: TextStyle(
                                    color: Color(0xffC7C9CD),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "3 Rooms",
                                  style: TextStyle(
                                    color: Color(0xff3E4753),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.0,
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xffC3C4C7),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                const Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemGalleryWidget(),
                      ItemGalleryWidget(),
                      ItemGalleryWidget(),
                      ItemGalleryWidget(),
                      ItemGalleryWidget(),
                      ItemGalleryWidget(),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CameraExample2(),
                  ),
                );
              }),
              child: Container(
                padding: EdgeInsets.all(15),
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xff349DFD),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  "Book Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
