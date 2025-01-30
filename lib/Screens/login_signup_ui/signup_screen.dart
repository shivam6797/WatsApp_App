import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practise_design/Screens/login_signup_ui/login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(27.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff5e6c84),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/handshake_girl_boy.png",
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(FontAwesomeIcons.at,
                            color: Color(
                              0xff5e6c84,
                            ),
                            size: 20),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, top: 0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintStyle: TextStyle(
                                color: Color(0xff717d93),
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(FontAwesomeIcons.userNinja,
                            color: Color(
                              0xff5e6c84,
                            ),
                            size: 20),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, top: 0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Full name',
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintStyle: TextStyle(
                                color: Color(0xff717d93),
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(FontAwesomeIcons.phone,
                            color: Color(
                              0xff5e6c84,
                            ),
                            size: 20),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, top: 0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Mobile',
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintStyle: TextStyle(
                                color: Color(0xff717d93),
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:20,),
            RichText(
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By signing up, you're agree to our  ",
                    style: TextStyle(
                      color: Color(0xff717d93),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Terms & Conditions\n",
                     recognizer: TapGestureRecognizer()..onTap = (){
                     print("hello");
                    },
                    style: TextStyle(
                      color: Color(0xff296dd4),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                    TextSpan(
                    text: "and",
                    style: TextStyle(
                      color: Color(0xff717d93),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "  Privacy Policy",
                    style: TextStyle(
                      color: Color(0xff296dd4),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
             ElevatedButton(
                      onPressed: () {
                        // Button action
                        print("Button Pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0064fe), // Background color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(330, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        elevation: 5, // Shadow elevation
                      ),
                      child: const Text(
                        'Continue',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                     SizedBox(height:40,),
            RichText(
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Joined us before?  ",
                    style: TextStyle(
                      color: Color(0xff717d93),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Login",
                     recognizer: TapGestureRecognizer()..onTap = (){
                     Navigator.push(context,MaterialPageRoute(builder:(context) => LoginScreen()));
                    },
                    style: TextStyle(
                      color: Color(0xff296dd4),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                   
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
