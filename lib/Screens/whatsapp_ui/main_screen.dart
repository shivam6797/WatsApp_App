import 'package:flutter/material.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/calls_screen.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/community_screen.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/updates_screen.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/whatsapp_main_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Create a list of screens
  final List<Widget> _screens = [
    WhatsAppMainScreen(),
    UpdatesScreen(),
    CommunityScreen(),
    CallsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
     bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xff0c1013), // Background color
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), // Shadow color
              blurRadius: 12, // Soft edges
              offset: Offset(0, -4), // Positioning the shadow upwards
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItemWithCircle(
              icon: "assets/images/chat_icon.png",
              label: 'Chats',
              isSelected: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            _buildNavItemWithCircle(
              icon: "assets/images/update_icon.png",
              label: 'Updates',
              isSelected: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            _buildNavItemWithCircle(
              icon: "assets/images/community_icon.png",
              label: 'Communities',
              isSelected: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            _buildNavItemWithCircle(
              icon: "assets/images/phone_image.png",
              label: 'Calls',
              isSelected: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }

   Widget _buildNavItemWithCircle({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    String? icon,
    Widget? iconWidget,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isSelected)
                  Container(
                    width: 70,
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                        color: Color(0xff103729), // Circle background
                        borderRadius: BorderRadius.circular(30)
                        // shape: BoxShape.circle,
                        ),
                  ),
                icon != null
                    ? Image.asset(
                        icon,
                        height: 30,
                        width: 30,
                        color: isSelected
                            ? Color(0xffd2f8d1)
                            : Colors.white, // Icon color
                      )
                    : iconWidget ??
                        Icon(
                          Icons.error,
                          size: 30,
                          color:
                              isSelected ? Color(0xffd2f8d1) : Color(0xffd2f8d1),
                        ),
              ],
            ),
          ),
          SizedBox(height: 8), // Spacing between icon and label
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.bold // Label color remains constant
            ),
          ),
        ],
      ),
    );
  }
}
