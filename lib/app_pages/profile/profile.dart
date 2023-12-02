import 'package:flutter/material.dart';
import '/../multiuse_style_templates/bottom_navigation_bar.dart';

class Profile extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text ('Profile')
      ),
      body: Center(
        //TODO add profile picture
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}