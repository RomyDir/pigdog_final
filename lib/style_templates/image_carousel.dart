import 'package:flutter/material.dart';
import '../../admin_pages/training_box_data.dart'; // Replace with your actual data file

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  List<String> imageUrls = []; // Assuming this gets populated from training_box_data.dart
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Load your image URLs from training_box_data.dart here
  }

  void searchImages(String query) {
    setState(() {
      searchQuery = query;
      // Implement your search logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.network(imageUrls[index]),
              );
            },
          ),
        ),
        TextField(
          onSubmitted: searchImages,
          decoration: InputDecoration(
            labelText: 'Search Image',
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
