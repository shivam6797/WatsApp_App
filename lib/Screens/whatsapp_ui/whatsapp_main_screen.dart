import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class WhatsAppMainScreen extends StatefulWidget {
   const WhatsAppMainScreen({super.key});

  @override
  State<WhatsAppMainScreen> createState() => _WhatsAppMainScreenState();
}

class _WhatsAppMainScreenState extends State<WhatsAppMainScreen> {
   int selectedIndex = 0;
  // list of features
  List<String> featureString = ["All", "Unread", "Favourites", "Groups", "+"];

  // Static list of chat data
  final List<Map<String, dynamic>> chatData = [
    {
      'title': 'Akshit Singh',
      'subtitle': 'Kya kar rahe ho?',
      'time': '10:45',
      'image': 'assets/images/akshit-singh.png',
    },
    {
      'title': 'Bhawika',
      'subtitle': 'Kal milte hain!',
      'time': '09:30',
      'image': 'assets/images/bhawika.png',
    },
    {
      'title': 'Tushar Jha',
      'subtitle': 'Bhai, match kab hai?',
      'time': '08:20',
      'image': 'assets/images/tushar-jha.png',
    },
    {
      'title': 'Rajveer',
      'subtitle': 'Okay, done!',
      'time': '07:15',
      'image': 'assets/images/Rajveer.png',
    },
    {
      'title': 'Sultan',
      'subtitle': 'Yaar kuch kaam hai...',
      'time': 'today',
      'image': 'assets/images/sultan.png',
    },
    {
      'title': 'Sujal Dave',
      'subtitle': 'Kl blinkit App bnate hai...',
      'time': 'Yesterday',
      'image': 'assets/images/sujal-dave.png',
    },
    {
      'title': 'Raunak Purohit',
      'subtitle': 'kese hai sb log..',
      'time': 'Yesterday',
      'image': 'assets/images/raunak-purohit.png',
    },
    {
      'title': 'Prajjwal',
      'subtitle': 'how r you gyus..',
      'time': '10:41',
      'image': 'assets/images/prajjwal.png',
    },
    {
      'title': 'Pallavi Chandra',
      'subtitle': 'kese hai sabhi..',
      'time': 'today',
      'image': 'assets/images/pallavi-chandra.png',
    },
    {
      'title': 'Nikhil',
      'subtitle': 'kl milte hai..',
      'time': '21:12',
      'image': 'assets/images/nikhil.png',
    },
    {
      'title': 'Neetiraj Singh',
      'subtitle': 'gud morning..',
      'time': '10:00',
      'image': 'assets/images/neetiraj.png',
    },
    {
      'title': 'Muskan Rathore',
      'subtitle': 'hello student..',
      'time': 'yestarday',
      'image': 'assets/images/muskan-rathore.png',
    },
    {
      'title': 'Lavanya Prasad',
      'subtitle': 'kese hai sabhi log..',
      'time': 'today',
      'image': 'assets/images/lavanya-prasad.png',
    },
    {
      'title': 'Lavanya Prasad',
      'subtitle': 'kese hai sabhi log..',
      'time': 'today',
      'image': 'assets/images/lavanya-prasad.png',
    },
    {
      'title': 'Sultan',
      'subtitle': 'Yaar kuch kaam hai...',
      'time': 'today',
      'image': 'assets/images/sultan.png',
    },
    {
      'title': 'Sujal Dave',
      'subtitle': 'Kl blinkit App bnate hai...',
      'time': 'Yesterday',
      'image': 'assets/images/sujal-dave.png',
    },
    {
      'title': 'Raunak Purohit',
      'subtitle': 'kese hai sb log..',
      'time': 'Yesterday',
      'image': 'assets/images/raunak-purohit.png',
    },
    {
      'title': 'Akshit Singh',
      'subtitle': 'Kya kar rahe ho?',
      'time': '10:45',
      'image': 'assets/images/akshit-singh.png',
    },
    {
      'title': 'Bhawika',
      'subtitle': 'Kal milte hain!',
      'time': '09:30',
      'image': 'assets/images/bhawika.png',
    },
    {
      'title': 'Tushar Jha',
      'subtitle': 'Bhai, match kab hai?',
      'time': '08:20',
      'image': 'assets/images/tushar-jha.png',
    },
    {
      'title': 'Neetiraj Singh',
      'subtitle': 'gud morning..',
      'time': '10:00',
      'image': 'assets/images/neetiraj.png',
    },
    {
      'title': 'Muskan Rathore',
      'subtitle': 'hello student..',
      'time': 'yestarday',
      'image': 'assets/images/muskan-rathore.png',
    },
    {
      'title': 'Lavanya Prasad',
      'subtitle': 'kese hai sabhi log..',
      'time': 'today',
      'image': 'assets/images/lavanya-prasad.png',
    },
  ];

  final List<Widget> _screens = [
    Center(child: Text('Chats')),
    Center(child: Text('Updates')),
    Center(child: Text('Communities')),
    Center(child: Text('Calls')),
  ];

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c1013),
      appBar: AppBar(
        backgroundColor: Color(0xff0c1013),
        elevation: 0,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/camera.svg",
                height: 20,
                width: 20,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20), // Spacing between icons
              SvgPicture.asset(
                "assets/icons/menu-dots-vertical.svg",
                height: 20,
                width: 20,
                color: Colors.white,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10), // Spacing between icons
            ],
          ),
        ],
      ),
      body: ListView(
        // physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          // Search bar
          Container(
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xff23282c).withOpacity(0.7),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xff23282c),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                prefixIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Color(0xff8f9599),
                  size: 18,
                ),
                hintText: "Ask Meta AI or Search",
                hintStyle: TextStyle(
                    color: Color(0xff8f9599),
                    fontSize: 15,
                    fontFamily: "Poppins"),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: ListView.builder(
              itemCount: featureString.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                 final bool isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                       selectedIndex = index;
                    });
                  },
                  child: IntrinsicWidth(
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 4.5, vertical: 5),
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
                      decoration: BoxDecoration(
                        color:  isSelected
                      ? Color(0xff103729) // Selected background color
                      : Color(0xff23282c).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          featureString[index],
                          textAlign: TextAlign.center,
                          maxLines: 1, // Restricts text to a single line
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: isSelected
                          ? Color(0xff4aa970) // Selected text color
                          : Color(0xff8f9599),
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: chatData.length,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  leading: CircleAvatar(
                    radius: 20, // Size of the profile picture
                    backgroundImage: AssetImage(chatData[index]
                        ['image']), // Replace with your image asset
                  ),
                  title: Text(
                    chatData[index]['title'], // Name
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Color(0xffe4e9ec),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      chatData[index]['subtitle'], // Message
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Color(0xff8f9599),
                      ),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 22.0),
                    child: Text(
                      chatData[index]['time'], // Time
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: Color(0xff8f9599),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // First Button (Camera-like icon)
          FloatingActionButton(
            mini: true,
            onPressed: () {
              // Action for the first button
            },
            backgroundColor: Color(0xff23282c).withOpacity(0.7),
            heroTag: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/images/meta_ai.png",
              // color: Colors.blueAccent,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
              // Adjust size of the icon
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // Main Floating Action Button (Green with a "+" symbol)
          FloatingActionButton(
            onPressed: () {
              // Action for the second button
            },
            backgroundColor: Color(0xff21c064),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            heroTag: null,
            child: Icon(
              Icons.add_comment, // Adjust to match the icon
              color: Colors.black,
              size: 20, // Adjust size of the icon
            ),
          ),
          // SizedBox(
          //   height: 10,
          // )
        ],
      ),
    );
  }
}
