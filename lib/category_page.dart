import 'package:flutter/material.dart';
import 'luzonfirst_question.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryPage(),
    );
  }
}

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  double luzonImageSize = 100.0;
  double visayasImageSize = 100.0;
  double mindanaoImageSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(231, 0, 0, 0),
              Colors.black87,
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/categorybg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add your other widgets or buttons here
                ],
              ),
            ),
            Positioned(
              top: 120.0,
              left: 110.0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    luzonImageSize = 150.0;
                    visayasImageSize = 100.0;
                    mindanaoImageSize = 100.0;
                  });

                  // Wait for the Luzon image to enlarge before redirecting
                  Future.delayed(Duration(milliseconds: 300), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRedirectPage()),
                    );

                    // Delay before navigating to LuzonFirstQuestion
                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LuzonFirstQuestion()),
                      );
                    });
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: luzonImageSize,
                  height: luzonImageSize,
                  child: Image.asset(
                    'assets/pinpointluzon.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 285.0,
              left: 280.0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    luzonImageSize = 100.0;
                    visayasImageSize = 150.0;
                    mindanaoImageSize = 100.0;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: visayasImageSize,
                  height: visayasImageSize,
                  child: Image.asset(
                    'assets/pinpointvisayas.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 420.0,
              left: 250.0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    luzonImageSize = 100.0;
                    visayasImageSize = 100.0;
                    mindanaoImageSize = 150.0;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: mindanaoImageSize,
                  height: mindanaoImageSize,
                  child: Image.asset(
                    'assets/pinpointmindanao.png',
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

class FirstRedirectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/luzonotw.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Remove the import statement for 'luzonfirst_question.dart'

// Keep the LuzonFirstQuestion class as it is

