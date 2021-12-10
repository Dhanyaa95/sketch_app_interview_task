import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF32a8a8),
            Color(0xFF83c6de),
            Color(0xFFb2c0eb),
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'Dashboard',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500, fontSize: 22),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_outlined,
                      color: Colors.white, size: 70)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 70),
              child: Row(children: [
                Text(
                  'Log in to your account',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ]),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 350, right: 35,left: 35),
                child:Container(
                  width: 670,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical:15 ,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFc1dde6),
                      borderRadius: BorderRadius.circular(36)),
                  child: TextFormField(
                    validator:  (value) {
                if (value!.isEmpty) {
                return 'Your Phone, email or username';
                }
                return null;
                },
                    cursorColor: Colors.white,
                    style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: '        Phone, email or username',
                    ),
                  ),),),
            Padding(
              padding: const EdgeInsets.only(top: 410, right: 35,left: 35),
              child:Container(
                width: 670,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical:15 ,
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFc1dde6),
                    borderRadius: BorderRadius.circular(36)),
                child: TextFormField(
                  validator:  (value) {
              if (value!.isEmpty) {
              return 'Your email';
              }
              return null;
              },
                  obscureText: true,
                  cursorColor: Colors.white,
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: '                      Password',
                  ),
                ),),),
            Padding(
                padding: const EdgeInsets.only(top: 480, right: 35,left: 35),

                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),

                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a Snackbar.
                          Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.montserrat(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Colors.cyan),
                      ),
                    ),

                  ),

                )),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 100),
              child: Row(
                children: [
                  Text(
                    'Create a new account',
                    style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
