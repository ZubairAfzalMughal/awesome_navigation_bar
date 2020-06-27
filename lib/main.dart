import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AwsomeNavigation(),
    );
  }
}
class AwsomeNavigation extends StatefulWidget {
  @override
  _AwsomeNavigationState createState() => _AwsomeNavigationState();
}

class _AwsomeNavigationState extends State<AwsomeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text("Navigation Bar",style: Theme.of(context).textTheme.headline5.copyWith(
          color: Colors.white,
          fontStyle: FontStyle.italic
        ),),
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orange,
        height: 40.0,
        //buttonBackgroundColor: Colors.orange,
        index: 2,
        onTap: (value){
          print(value);
        },
        animationDuration: Duration(
          milliseconds: 250
        ),
        animationCurve: Curves.bounceInOut,
        items: <Widget>[
          Icon(Icons.photo_camera,),
          Icon(Icons.notifications_active),
          Icon(Icons.add),
          Icon(Icons.account_box),
          Icon(Icons.ondemand_video),
        ],
      ),
    );
  }
}
