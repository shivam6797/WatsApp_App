import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewDesignScreen extends StatelessWidget {
  const GridViewDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final List<String> images = [
     'assets/images/sun_set_image.jpg',
      'assets/images/sea_image.jpg',
      "assets/images/green_valley.jpg",
    "assets/images/ice_rock.jpg",
    "assets/images/rock_image.jpg",
      "assets/images/ice_drop_image.jpg",
      "assets/images/day_moon.jpg",
    
  ];
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.only(top:40,left:16.0,right:16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          'Nature',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "Poppins",
            color: Colors.black,
          ),
        ),
            Text(
              '36 wallpaper available',
              style: TextStyle(
                fontSize: 14,
            fontFamily: "Poppins",
                color: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                ),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      height: index.isEven ? 200 : 240,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );;
  }
}