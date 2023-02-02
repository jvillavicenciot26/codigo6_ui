import 'package:codigo6_ui/Widgets/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          //Fondo
          Stack(
            //Stack para manejar el fondo
            children: [
              Positioned(
                top: -height * 0.28,
                left: -height * 0.05,
                child: CircleWidget(
                  color: Color(0xff33959B),
                  radius: height * 0.2,
                ),
              ),
              Positioned(
                top: -height * 0.45,
                left: height * 0.1,
                child: CircleWidget(
                  color: Color(0xff8AEC9E),
                  radius: height * 0.35,
                ),
              ),
            ],
          ),

          //Formulario
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.14,
                    ),
                    Text(
                      "reisup",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff3EA2A8),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "You have goals.",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff2E303E),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9, //Establece espacio entre letras
                      ),
                    ),
                    Text(
                      "Invest to achieve them.",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff2E303E),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9,
                      ),
                    ),
                    TextField(
                      cursorColor: Color(0xff3EA2A8),
                      decoration: InputDecoration(
                        hintText: "Email*",
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.black38,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3EA2A8).withOpacity(0.5),
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3EA2A8).withOpacity(0.5),
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      cursorColor: Color(0xff3EA2A8),
                      decoration: InputDecoration(
                        hintText: "Password*",
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.black38,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3EA2A8).withOpacity(0.5),
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff3EA2A8).withOpacity(0.5),
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 52.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log in"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2E303E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 52.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign up"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3EA2A8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Center(
                      child: Text(
                        "Forgot username or password?",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff2E303E),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: Text(
                        "By proceding you also agree to the Terms of Service and Privacy Policy",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Color(0xff2E303E).withOpacity(0.6),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
