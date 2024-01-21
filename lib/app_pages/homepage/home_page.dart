import 'package:flutter/material.dart';
import '../../admin_pages/training_box_data.dart';
import '../../admin_pages/collectables.dart';
import '../../style_templates/image_carousel.dart';
import '../../multiuse_style_templates/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // State variables and methods go here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Calendar widget goes here
      ),
      body: Column(
        children: [
          Text("Select Daily Workout"),
          ImageCarousel(),// Image carousel widget goes here
          // Search button goes here
          Text("Next Collectable"),
          // Collectable display and interaction goes here
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
        // Navigation bar items go here
    );
  }
}
