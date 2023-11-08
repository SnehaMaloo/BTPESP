import 'package:flutter/material.dart';
import 'package:btp_app/reusable_widgets/reusable_widgets.dart';
import 'package:btp_app/utils/colors_util.dart';

class IndoorLocationScreen extends StatefulWidget {
  const IndoorLocationScreen({Key? key}) : super(key: key);
  @override
  _IndoorLocationScreenState createState() => _IndoorLocationScreenState();
}

class _IndoorLocationScreenState extends State<IndoorLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        //child:),
      ),
    );
  }
}
