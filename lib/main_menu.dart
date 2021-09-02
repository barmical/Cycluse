import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class MainMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'images/clip.jpg',
                    height: 540.0,
                    width: 540.0,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  height: 50,
                  width: 1,
                  margin: EdgeInsets.only(left: 20, right: 220),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LogInMenu();
                      }));
                      },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(50, 255, 46, 100),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25),
                        )
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
        ),
      ),
    );
  }
}
