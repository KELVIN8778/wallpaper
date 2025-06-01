import 'package:flutter/material.dart';
import 'package:sukuna_wallpapers/widgets/CustomAppBar.dart';
import 'package:sukuna_wallpapers/widgets/catBlock.dart';
import 'package:sukuna_wallpapers/widgets/SearchBar.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomAppBar(word1: "WALLPAPER ", word2: " 4K"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://wallpaperaccess.com/full/2603099.jpg",

                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black38,
                ),
                Positioned(
                  left: 120,
                  top: 40,
                  child: Column(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "One Piece",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 400,
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 10,
                ),
                itemCount: 16,
                itemBuilder:
                    ((context, index) => Container(
                      height: 800,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Image.network(
                          height: 800,
                          width: 50,
                          fit: BoxFit.cover,
                          "https://wallpaperbat.com/img/662377-sanji-one-piece-4k-phone-hd-wallpaper-image-background-photo-and-picture-mocah-hd-wallpaper.jpg",
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
