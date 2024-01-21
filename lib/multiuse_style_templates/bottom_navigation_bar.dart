import 'package:flutter/material.dart';
import '/app_pages/pigdogs/pigdogs.dart';
import '/app_pages/homepage/home_page.dart';
import '/app_pages/profile/profile.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 1; // initial index

  void _onItemTapped(int index) {
    if (_currentIndex == index) { // Check if the new index is different from the current index
      return;
    }
      setState(() {
        _currentIndex = index;
      });
      // Navigate to the selected page
      Future.delayed(Duration.zero, (){
      switch (index) {
        case 0:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Pigdogs()));
          break;
        case 1:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
          break;
        case 2:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Profile()));
          break;
      }
    });
  }

  Widget _buildIcon(String iconName, bool isActive) {
    String buttonImage = isActive ? 'button_small_active.png' : 'button_small.png';
    String iconImage = iconName + (isActive ? '_active.png' : '.png');

    // Ensuring that images have constraints if they do not have intrinsic size
    return SizedBox(
      width: 30, // Set the size of the button
      height: 30,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset('assets/icons/$buttonImage'), // Button background
          Image.asset('assets/icons/$iconImage'), // Icon
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex, // Using the current index
      onTap: _onItemTapped, // Function to handle item tap
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon('pigdogs', _currentIndex == 0),
          label: 'Pigdogs',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('home', _currentIndex == 1),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon('profile', _currentIndex == 2),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.grey[800], // Color for the selected item
      unselectedItemColor: Colors.grey, // Color for the unselected items
      showUnselectedLabels: true, // Whether the labels of unselected items are shown
    );
  }
}
