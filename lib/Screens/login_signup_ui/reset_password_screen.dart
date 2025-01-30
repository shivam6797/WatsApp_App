import 'package:flutter/material.dart';
import 'package:flutter_practise_design/Screens/login_signup_ui/otp_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
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
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Image.asset(
            "assets/images/lock_image.png",
            fit: BoxFit.contain,
          ),
           Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reset\nPASSWORD?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
                SizedBox(
                  height: 25,
                ),
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(FontAwesomeIcons.lock,
                            color: Color(
                              0xff5e6c84,
                            ),
                            size: 20),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'New password',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Icon(FontAwesomeIcons.eyeSlash,
                                  color: Color(
                                    0xff5e6c84,
                                  ),
                                  size: 20),
                            ),
                            contentPadding: EdgeInsets.only(top: 10),
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
                  height: 25,
                ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(FontAwesomeIcons.lock,
                            color: Color(
                              0xff5e6c84,
                            ),
                            size: 20),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(left: 10, top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Confirm new password',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Icon(FontAwesomeIcons.eyeSlash,
                                  color: Color(
                                    0xff5e6c84,
                                  ),
                                  size: 20),
                            ),
                            contentPadding: EdgeInsets.only(top: 10),
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
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpScreen()));
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.grey.shade500,
                          color: Colors.white70,
                          strokeWidth: 2,
                          value: 10,
                        ),
                      ),
                      SizedBox(width:8,),
                      Padding(
                        padding: const EdgeInsets.only(right:30.0),
                        child: const Text(
                          'Submitting...',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
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