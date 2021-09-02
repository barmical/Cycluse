import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/category.dart';
import 'package:untitled1/sub_category.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailCategory extends StatelessWidget{
  final RecyclingMaterial material;

  DetailCategory({required this.material});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      material.imageClip,
                      width: 480,
                      height: 480,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      material.name,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      material.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w200
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'What you can make with this Material?',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                        ),
                        items: material.imageUrls.map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  e,
                                ),
                              ),
                              FavoriteButton(),
                            ],
                          ),
                        )).toList(),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 20, right: 10),
        height: 50,
        width: 50,
        child: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Category();
          }));
        },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      color: Colors.red,
        size: 40,
    ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
