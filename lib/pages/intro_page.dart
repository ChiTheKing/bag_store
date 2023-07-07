import 'package:bag_store/pages/home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 180),
            Column(
              children: [
                Image(
                  image: AssetImage('assets/images/pngwing.com.png',),
                  fit: BoxFit.cover,
                  height: 250,
                  width: 300,
                ),
                Text(
                  "iBag",
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ],
            ),
            Text(
              "Your luxury bag store",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 180,
                    right: 180,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
