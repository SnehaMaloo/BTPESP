import 'package:btp_app/screens/Indoor_location.dart';
import 'package:btp_app/screens/Location.dart';
import 'package:btp_app/screens/images.dart';
import 'package:btp_app/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trackig App'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                // FirebaseAuth.instance.signOut().then((value) {
                //   print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
                // });
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageScreen()));
              },
              child: Text("Images Captured"),
            ),
            SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocationScreen()));
              },
              child: Text("Location"),
            ),
            SizedBox(height: 16), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IndoorLocationScreen()));
              },
              child: Text("Indoor Location"),
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}
