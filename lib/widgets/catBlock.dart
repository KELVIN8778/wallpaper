import 'package:flutter/material.dart';

class Catblock extends StatelessWidget {
  const Catblock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              height: 50,
              width: 100,
              fit: BoxFit.cover,
              "https://4kwallpapers.com/images/walls/thumbs_3t/15328.jpeg",
            ),
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          Positioned(
            left: 30,
            top: 15,
            child: Text("One piece", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
