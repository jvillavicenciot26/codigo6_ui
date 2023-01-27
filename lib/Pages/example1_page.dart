import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MediaQuery permite acceder a algunas caracteristicas del dispositivo movil
    print(MediaQuery.of(context).size.height); //altura de dispositivo
    print(MediaQuery.of(context).size.width); //ancho de dispositivo

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff0A4B4F),
                  Color(0xff05172A),
                ],
              ),
            ),
            //height: MediaQuery.of(context).size.height * 0.3,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parkirin",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "24°C",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Image.asset(
                            "assets/images/nube.png",
                            height: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    // constraints permite establecer limitantes para los container
                    constraints: BoxConstraints(
                      //limitamos el container al 60% del dispositivo
                      maxWidth: width * 0.6,
                    ),
                    child: Text(
                      "Let's find a place for you for the weekend",
                      style: GoogleFonts.poppins(
                        fontSize: 34,
                        color: Colors.white,
                        height: 1.15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Find parking place",
                            hintStyle: GoogleFonts.poppins(
                              color: Color(0xff90969B),
                              fontSize: 14.0,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 26,
                              color: Color(0xff90969B),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFDC304),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Icon(
                          Icons.filter_alt_off_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parking near you",
                      style: GoogleFonts.poppins(
                        fontSize: 19.0,
                        color: Color(0xff00162D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      //textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "View more",
                          style: GoogleFonts.poppins(
                            fontSize: 12.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.amber,
                          size: 12.0,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
