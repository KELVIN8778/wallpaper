import 'package:flutter/material.dart';
import 'package:sukuna_wallpapers/widgets/CustomAppBar.dart';
import 'package:sukuna_wallpapers/widgets/catBlock.dart';
import 'package:sukuna_wallpapers/widgets/SearchBar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: AppBar(word1: "WALLPAPER", word2: "4K"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar(),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: ((context, index) => Catblock()),
                ),
              ),
            ),

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
