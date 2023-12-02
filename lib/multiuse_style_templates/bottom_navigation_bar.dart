import 'package:flutter/material.dart';
import '/../app_pages/pigdogs/pigdogs.dart';
import '/../app_pages/homepage/home_page.dart';
import '/../app_pages/profile/profile.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  //TODO: add here the buttons that change style when you are on the active page - looks like clicked style
  //final int currentIndex;
  //final Function(int) onItemSelected;
  //add here the buttons that change style when you are on the active page - looks like clicked style
  // CustomBottomNavigationBar({
    // required this.currentIndex,
    //required this.onItemSelected,
  // });

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 1; // initial Index
  
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Pigdogs()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    //Debugging: Print the curretn index to the console
    print("Current NavBar index= $_currentIndex");

    return BottomNavigationBar(
      currentIndex: _currentIndex, // Using the current index
      onTap: _onItemTapped, // Function to handle item tap
      items: [
        // These items should always be non-null
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Pigdogs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Homepage',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],

      selectedItemColor: Colors.blue, // Color for the selected item
      unselectedItemColor: Colors.grey, // Color for the unselected items
      showUnselectedLabels: true, // Whether the labels of unselected items are shown
    );
  }
}
