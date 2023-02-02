import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          image: NetworkImage(
            "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.pinkAccent],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Burguer \nQueen",
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontSize: 30.0,
                      height: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Good Food",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                Text(
                  "Tasty Food *",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      "Sing in",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF8D07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   // body: Container(
    //   //   width: double.infinity,
    //   //   decoration: BoxDecoration(
    //   //     color: Colors.amber,
    //   //     image: DecorationImage(
    //   //         image: NetworkImage(
    //   //           "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //   //         ),
    //   //         fit: BoxFit.cover),
    //   //   ),
    //   //   child: Column(
    //   //     children: [
    //   //       Text(
    //   //         "Hola",
    //   //       ),
    //   //       TextField(),
    //   //     ],
    //   //   ),
    //   // ),
    //   // body: Stack(
    //   //   children: [
    //   //     Container(
    //   //       decoration: BoxDecoration(
    //   //         image: DecorationImage(
    //   //           image: NetworkImage(
    //   //             "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //   //           ),
    //   //           fit: BoxFit.cover,
    //   //         ),
    //   //       ),
    //   //     ),
    //   //   ],
    //   // ),
    // );
  }
}
