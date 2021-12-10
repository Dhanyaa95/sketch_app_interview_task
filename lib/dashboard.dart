import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignIn.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF32a8a8),
              Color(0xFF83c6de),
              Color(0xFFb2c0eb),
            ],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Dashboard',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 22),),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 300,bottom: 50),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.check_circle_outline,color: Colors.white,size: 70),
                ],
              ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: <Widget>[
                Text(
                  '  Welcome',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 35 , color: Colors.white),
                ),
                Text(
                  '\n  Lorem ipsum dolor sit amet,\n   consectetur adipisicing elit.',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w200,
                      fontSize: 16 , color: Colors.white)
                  ),

              ],
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(top: 320,left: 160),
                child: Row(

                  children: [
                    Container(
                      height: 9,width: 9,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                    ),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 9,width: 9,
                      decoration: const BoxDecoration(
                          color:  Color(0xFFcee4ed),
                          shape: BoxShape.circle
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 9,width: 9,
                      decoration: const BoxDecoration(
                          color: Color(0xFFcee4ed),
                          shape: BoxShape.circle
                      ),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 9,width: 9,
                      decoration: const BoxDecoration(
                          color:  Color(0xFFcee4ed),
                          shape: BoxShape.circle
                      ),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 9,width: 9,
                      decoration: const BoxDecoration(
                          color:  Color(0xFFcee4ed),
                          shape: BoxShape.circle
                      ),),



                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350,left: 60),
                child: Container(
                  height: 45,width: 270,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child:  Text(
                      "Get Started",
                      style:  GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF7ec1de),
                    ),
                  ),
                ),
              )
              )
                ],
              )



          ),
        ),



    );
  }
}