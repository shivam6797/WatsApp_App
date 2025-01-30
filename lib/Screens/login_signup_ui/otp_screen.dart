import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Image.asset(
              "assets/images/otp_screen.png",
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical:30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter OTP",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "An 4 digit code has been sent to\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "+91 9073873783",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left:20.0),
               child: Pinput(
                 length: 4, // Number of OTP digits
                //  onCompleted: (pin) => print("OTP Entered: $pin"), // Callback on completion
                //  onChanged: (value) => print("Current Value: $value"), // Callback on change
                 defaultPinTheme: PinTheme(
                   width: 56,
                   height: 56,
                   textStyle: const TextStyle(
                     fontSize: 20,
                     color: Colors.black,
                     fontWeight: FontWeight.w600,
                   ),
                   decoration: BoxDecoration(
                     color: Color(0xfff1f5f6),
                     borderRadius: BorderRadius.circular(8),
                   ),
                 ),
                //  focusedPinTheme: PinTheme(
                //    decoration: BoxDecoration(
                //      border: Border.all(color: Colors.blue),
                //      borderRadius: BorderRadius.circular(8),
                //    ),
                //  ),
                //  submittedPinTheme: PinTheme(
                //    decoration: BoxDecoration(
                //      color: Colors.grey[300],
                //      border: Border.all(color: Colors.blue),
                //      borderRadius: BorderRadius.circular(8),
                //    ),
                //  ),
               ),
             ),
             SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
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
                      child: Center(
                        child: const Text(
                          'Verify Otp...',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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