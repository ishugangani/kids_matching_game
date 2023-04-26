import 'package:flutter/material.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({Key? key}) : super(key: key);

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.asset("asset/images/bg.jpg",fit: BoxFit.cover),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Spacer(),
                  Image.asset(
                    "asset/images/congo.png",
                    height: 200,
                    width: 200,
                  ),
                  Spacer(),
                  Text(
                    " You Have Completed \n The Challenge!!!! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'bruno',
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/');
                    },
                    child: Text(
                      "Restart",
                      style: TextStyle(
                        fontFamily: 'bruno'
                      ),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
