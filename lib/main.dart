//@dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/category.dart';
import 'package:untitled1/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
      ),
      home: MainMenu(),
    );
  }
}

class LogInMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 90),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'CYCLUSE',
                    style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Recycle it, Reuse it',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w200
                    ),
                  ),
                ),
                Image.asset(
                  "images/login.png",
                  width: 300,
                  height: 300,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24)
                              ),
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Category();
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
                              'LOG IN',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromRGBO(0, 0, 164, 100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          )
      ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 20, right: 10),
          height: 50,
          width: 50,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}
