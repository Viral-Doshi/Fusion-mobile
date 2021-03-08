import 'package:flutter/material.dart';
import 'package:fusion/screens/Academic/Registration/courses.dart';
import 'package:fusion/screens/Academic/Registration/final_registration.dart';
import 'package:fusion/screens/Academic/Registration/pre_registration.dart';
import 'package:fusion/screens/Login%20and%20Dashboard/Components/side_drawer.dart';

class RegistrationHomePage extends StatefulWidget {
  @override
  _RegistrationHomePageState createState() => _RegistrationHomePageState();
}

class _RegistrationHomePageState extends State<RegistrationHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "FUSION",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 6.0,
            tabs: [
              Tab(
                child: Container(
                  child: Text(
                    'Courses',
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Pre-Registration',
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Final Registration',
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: SideDrawer(),
        body: TabBarView(
          children: [
            Courses(),
            FinalRegistration(),
            PreRegistration(),
          ],
        ),
      ),
    );
  }
}
