import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/detail_category.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/sub_category.dart';

class Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Types of Material',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
                flex: 1,
                child: ListView.builder(
                  itemBuilder: (context, index){
                    final RecyclingMaterial material = recyclingMaterialList[index];
                    return InkWell(
                      child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                  width: 340,
                                  height: 150,
                                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [Colors.green, Colors.lightGreen])
                                  ),
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          material.imageAsset,
                                          width: 130,
                                          height: 200,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            material.name,
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white70
                                            ),
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            material.types,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white70
                                            ),
                                          ),
                                          Text(
                                            'etc.',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white70
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return DetailCategory(material: material);
                                            }));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Color.fromRGBO(50, 255, 46, 100),
                                              shape: new RoundedRectangleBorder(
                                                borderRadius: new BorderRadius.circular(25),
                                              )
                                          ),
                                          child:
                                          Text(
                                            'Learn More',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white70
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        width: 90,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Color.fromRGBO(0, 0, 164, 100),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(height: 20)
                            ],
                          )
                      ),
                    );
                  },
                  itemCount: recyclingMaterialList.length,
                ),
              ),
        ],
      ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 20, right: 10),
          height: 50,
          width: 50,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LogInMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}