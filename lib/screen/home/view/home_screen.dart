import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.asset("asset/images/bg.jpg", fit: BoxFit.cover),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    height: 140,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "KID'S MATCHING GAME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bruno',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
                      child: Text(
                        "Settings",
                        style: TextStyle(fontFamily: 'bruno',fontSize: 15),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'play');
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
                      child: Text(
                        "   Play   ",
                        style: TextStyle(fontFamily: 'bruno',fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
