import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListviewGridviewDesignScreen extends StatefulWidget {
  const ListviewGridviewDesignScreen({super.key});

  @override
  State<ListviewGridviewDesignScreen> createState() => _ListviewGridviewDesignScreenState();
}

class _ListviewGridviewDesignScreenState extends State<ListviewGridviewDesignScreen> {
  @override
  Widget build(BuildContext context) {
     int _currentIndex = 0;
    final List<String> listviewImages = [
      "assets/images/first_image.jpg",
      "assets/images/simple_image.jpg",
      "assets/images/mobile_image.jpg",
      "assets/images/abstract_image.jpg",
      'assets/images/sun_set_image.jpg',
      'assets/images/sea_image.jpg',
      "assets/images/rock_image.jpg",
      "assets/images/ice_rock.jpg",
      "assets/images/ice_drop_image.jpg",
      "assets/images/green_valley.jpg",
      "assets/images/day_moon.jpg",
    ];
    final List<Map<String, String>> gridViewImage = [
  {'title': 'Abstract', 'image':   "assets/images/abstract_image.jpg"},
  {'title': 'Nature', 'image': 'assets/images/sea_image.jpg'},
  {'title': 'Abstract', 'image':  "assets/images/rock_image.jpg"},
  {'title': 'Nature', 'image':   "assets/images/ice_rock.jpg"},
  {'title': 'Abstract', 'image':   "assets/images/ice_drop_image.jpg"},
  {'title': 'Nature', 'image':   "assets/images/green_valley.jpg"},
  {'title': 'Nature', 'image':    "assets/images/day_moon.jpg"},

];
    final List<Color> myColors = [
      Color(0xfffdb7b9),
      Color(0xff4164e0),
      Color(0xff6141e0),
      Color(0xff60bfc1),
      Color(0xff292929),
      Color(0xffff9a0d),
      Color(0xffb647eb),
    ];
    return Scaffold(
      backgroundColor: Color(0xffdce7f2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical:20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffeef3f5),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass, color: Color(0xffc0c3c8),size:18,),
                    hintText: "Find Wallpaper...",
                    hintStyle: TextStyle(color: Color(0xffc0c3c8),fontSize:15,fontFamily: "Poppins"),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Best of the month
              Text(
                "Best of the month",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listviewImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(listviewImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // The color tone
              Text(
                "The color tone",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50, // Height of the ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  itemCount:
                      myColors.length, // Number of items in your color list
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 4), // Spacing between items
                      height: 20,
                      width: 45,
                      decoration: BoxDecoration(
                        color: myColors[
                            index], // Use the color from your static list
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        shape: BoxShape.rectangle,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Categories
              Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4 / 2,
                ),
                itemCount:
                    gridViewImage.length, // Use the length of your static list
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = gridViewImage[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(
                            item['image']!), // Use image from the list
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        item['title']!, // Use title from the list
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black38,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Ensures icons stay fixed
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view,size:20,color: Colors.blue,),
            label: '', // No label, similar to your image
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.download,size:20,color: Color(0xffc0c3c8),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user,size:20,color: Color(0xffc0c3c8),),
            label: '',
          ),
        ],
        selectedItemColor: Colors.blue, // Active item color
        unselectedItemColor: Colors.grey, // Inactive items color
        showSelectedLabels: false, // Hide selected labels
        showUnselectedLabels: false, // Hide unselected labels
        backgroundColor: Colors.white, // Background color
        elevation: 5, // Shadow below the bar
      ),
    );
  }
}
