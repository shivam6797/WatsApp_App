import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> callLogs = [
      {
        'name': 'Shivam Bhai',
        'time': 'Today, 20:10',
        'type': 'outgoing',
        'icon': Icons.call,
        'count': 4,
      },
      {
        'name': 'Prakash Sharma Sir Indb',
        'time': 'Today, 19:37',
        'type': 'incoming',
        'icon': Icons.call,
      },
      {
        'name': 'Rinku Agra',
        'time': 'Today, 19:34',
        'type': 'missed',
        'icon': Icons.call,
        'count': 4,
      },
      {
        'name': 'Shekhar Delhi',
        'time': '7 January, 15:46',
        'type': 'missed',
        'icon': Icons.videocam,
        'count': 2,
      },
      {
        'name': 'Sonu Paliwal New',
        'time': '6 January, 21:04',
        'type': 'incoming',
        'icon': Icons.call,
      },
      {
        'name': 'Prince Singh Jaipur',
        'time': '10 February, 11:48',
        'type': 'outgoing',
        'icon': Icons.videocam,
      },
        {
        'name': 'Shourya Dharadhun',
        'time': '7 January, 14:48',
        'type': 'missed',
        'icon': Icons.call,
      },
        {
        'name': 'Rohit Kumar',
        'time': 'Today, 08:48',
        'type': 'outgoing',
        'icon': Icons.call,
      },
        {
        'name': 'Shivam Bhai',
        'time': 'Today, 20:10',
        'type': 'outgoing',
        'icon': Icons.call,
        'count': 4,
      },
      {
        'name': 'Prakash Sharma Sir Indb',
        'time': 'Today, 19:37',
        'type': 'incoming',
        'icon': Icons.call,
      },
      {
        'name': 'Rinku Agra',
        'time': 'Today, 19:34',
        'type': 'missed',
        'icon': Icons.call,
        'count': 4,
      },
      {
        'name': 'Shekhar Delhi',
        'time': '7 January, 15:46',
        'type': 'incoming',
        'icon': Icons.videocam,
        'count': 2,
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xff0c1013),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0c1013),
        elevation: 0,
        title: Text(
          "Calls",
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
                color: Color(0xff8f9599),
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
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                "Favourites",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 20, top: 20),
                  decoration: BoxDecoration(
                      color: Color(0xff21c064), shape: BoxShape.circle),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/icons/heart.svg",
                    color: Colors.black,
                    height: 18,
                    width: 18,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Text(
                    "Add favourites",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Recent",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: callLogs.length,
              itemBuilder: (context, index) {
                final log = callLogs[index];
                final String type =
                    log['type']; // incoming, outgoing, or missed
      
                // Determine the arrow and its color based on the type
                final String arrow = type == 'incoming'
                    ? '↙'
                    : type == 'outgoing'
                        ? '↗️'
                        : '↙'; // Missed calls
                final Color arrowColor =
                    type == 'missed' ? Color.fromARGB(255, 250, 64, 80) : Colors.green;
      
                // Check if the call is missed to style the text
                final bool isMissedCall = type == 'missed';
      
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    child: Icon(
                      Icons.person, // Default avatar
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        log['name'],
                        style: TextStyle(
                          color: isMissedCall ? Color.fromARGB(255, 250, 64, 80) : Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"
                        ),
                      ),
                      if (log.containsKey('count'))
                        Text(
                          ' (${log['count']})',
                          style: TextStyle(
                            color: isMissedCall
                                ? Color.fromARGB(255, 250, 64, 80) // Red for missed calls
                                : Colors.white, // Default color for others
                            fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"
                          ),
                        ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        arrow,
                        style: TextStyle(
                          color: arrowColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        log['time'],
                        style: TextStyle(
                          color: Color(0xff8f9599),
                          fontFamily: "Poppins"

                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    log['icon'] ?? Icons.phone,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: () {
         },
         backgroundColor: Color(0xff21c064),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
         ),
         heroTag: null,
         child: Image.asset(
           "assets/images/calls_icon.png",
           // color: Colors.blueAccent,
           height: 25,
           width: 25,
           fit: BoxFit.cover,
           // Adjust size of the icon
         ),
       ),
    );
  }
}
