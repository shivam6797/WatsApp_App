import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> channelData = [
      {
        'title': 'Tech Talks',
        'subtitle': 'Latest discussions on tech trends',
        'time': 'Live now',
        'image': 'assets/images/tech_talks.png',
      },
      {
        'title': 'Gaming Hub',
        'subtitle': 'Join us for gaming sessions and updates',
        'time': '10:00 AM',
        'image': 'assets/images/gaming_hub.jpeg',
      },
      {
        'title': 'Music Mania',
        'subtitle': 'All about music, from hits to classics',
        'time': '3:00 PM',
        'image': 'assets/images/music_mania.jpg',
      },
      {
        'title': 'Fitness Freaks',
        'subtitle': 'Stay fit with fitness tips and challenges',
        'time': '7:00 AM',
        'image': 'assets/images/fitness-freak.jpg',
      },
      {
        'title': 'Movie Buffs',
        'subtitle': 'Talk movies, reviews, and recommendations',
        'time': '6:00 PM',
        'image': 'assets/images/movie_buff.jpg',
      },
      {
        'title': 'Travel Diaries',
        'subtitle': 'Explore the world with travel stories',
        'time': '12:00 PM',
        'image': 'assets/images/travel_dairies.png',
      },
      {
        'title': 'Book Lovers',
        'subtitle': 'A place for book enthusiasts',
        'time': '8:00 PM',
        'image': 'assets/images/book_lovers.png',
      },
      {
        'title': 'Cooking Creations',
        'subtitle': 'Delicious recipes and cooking tips',
        'time': '2:00 PM',
        'image': 'assets/images/cooking_creations.jpg',
      },
      {
        'title': 'Photography Hub',
        'subtitle': 'For the love of photography and cameras',
        'time': '5:00 PM',
        'image': 'assets/images/photography_hub.jpeg',
      },
      {
        'title': 'Sports Talk',
        'subtitle': 'Latest sports news and discussions',
        'time': '9:00 AM',
        'image': 'assets/images/sports_talks.jpeg',
      },
    ];

    final List<Map<String, dynamic>> followerData = [
      {
        'title': 'Narendra Modi',
        'subtitle': '4.7M followers',
        'image': 'assets/images/modi_image.png',
      },
      {
        'title': 'Yogi AdityaNath',
        'subtitle': '5.8M followers',
        'image': 'assets/images/yogi_aditaynath.png',
      },
      {
        'title': 'Mukesh Ambani',
        'subtitle': '4.9M followers',
        'image': 'assets/images/mukesh_ambani.png',
      },
      {
        'title': 'Andy Jassy',
        'subtitle': '4.0M followers',
        'image': 'assets/images/andy_amazon.png',
      },
      {
        'title': 'Bill Gates',
        'subtitle': '4.7M followers',
        'image': 'assets/images/will_gates.png',
      },
      {
        'title': 'Sundar Pichai',
        'subtitle': '4.0M followers',
        'image': 'assets/images/sundar_paichai.png',
      },
      {
        'title': 'Virat Kholi',
        'subtitle': '3.9M followers',
        'image': 'assets/images/virat_kholi_image.png',
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xff0c1013),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0c1013),
        elevation: 0,
        title: Text(
          "Updates",
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
              SizedBox(width: 20),
              Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 18,
              ), // Spacing between icons
              SizedBox(width: 20),
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
        // padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Status",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 200,
            // color: Colors.orange,
            margin: EdgeInsets.only(left: 10, top: 20),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 120,
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Color(0xff3e474e),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      // Positioned.fill(
                      //   child: Image.asset(
                      //     "assets/images/abstract_image.jpg",
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Ensures the shape is a circle
                            border: Border.all(
                              color: Color(0xff21c064), // Border color
                              width: 2, // Border width
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 25, // Size of the profile picture
                            backgroundImage: AssetImage(
                                "assets/images/boy_image.png"), // Replace with your image asset
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15, // Position from the bottom
                        left: 10, // Position from the left
                        right: 10,
                        child: Text(
                          'Shivam Pratap Singh',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Explore >',
                    style: TextStyle(
                      color: Color(0xff43ab6c),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: channelData.length,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  leading: CircleAvatar(
                    radius: 20, // Size of the profile picture
                    backgroundImage: AssetImage(channelData[index]
                        ['image']), // Replace with your image asset
                  ),
                  title: Text(
                    channelData[index]['title'], // Name
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
                      channelData[index]['subtitle'], // Message
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
                      channelData[index]['time'], // Time
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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Find channels to follow',
              style: TextStyle(
                color: Color(0xff92989c),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.4,
            // color: Colors.amber,
            margin: EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: followerData.length,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  leading: CircleAvatar(
                    radius: 20, // Size of the profile picture
                    backgroundImage: AssetImage(followerData[index]
                        ['image']), // Replace with your image asset
                  ),
                  title: Text(
                    followerData[index]['title'], // Name
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Color(0xffe4e9ec),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Text(
                      followerData[index]['subtitle'], // Message
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Color(0xff8f9599),
                      ),
                    ),
                  ),
                  trailing: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xff103729),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Follow", // Message
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Color(0xffd2f8d1),
                            ),
                          ),
                        ),
                      )),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 40,
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                    color: Color(0xff0c1013),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.6), width: 0.1)),
                child: Center(
                  child: Text(
                    "Explore more", // Message
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4aa970),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
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
            backgroundColor: Color(0xff1f272a),
            heroTag: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.edit)
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
            child: Image.asset(
              "assets/images/add-photo.png",
              // color: Colors.blueAccent,
              height: 25,
              width: 25,
              fit: BoxFit.cover,
              // Adjust size of the icon
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
