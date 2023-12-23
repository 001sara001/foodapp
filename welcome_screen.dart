import 'package:flutter/material.dart';
import 'package:untitled1/screens/user.dart';
import 'package:untitled1/screens/restaurant.dart';
import 'package:untitled1/screens/applogo.dart';
import 'package:untitled1/widgets/custom_scaffold.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          applogo(),
          SizedBox(height: 130), // Adjust the height as needed
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.white),
              ),
            ),
            child: Container(
              width: 200,
              height: 80,
              alignment: Alignment.center,
              child: Text('User', style: TextStyle(fontSize: 20)),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Restaurant()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.white),
              ),
            ),
            child: Container(
              width: 200,
              height: 80,
              alignment: Alignment.center,
              child: const Text('Restaurant', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

