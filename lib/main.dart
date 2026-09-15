import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  const PointsCounterApp({super.key});

  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6C0617),
          title: Text(
            'Points Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        body: Stack(
          children: [
            Image.asset(
              'assets/basketball.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Column(
              children: [
                Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'TEAM A',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$teamAPoints',
                          style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            fixedSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+1 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(height: 6),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            minimumSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+2 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            minimumSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+3 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 300,
                      child: VerticalDivider(
                        width: 60,
                        thickness: 1.5,
                        color: Colors.grey[350],
                        indent: 16,
                      ),
                    ),

                    Column(
                      children: [
                        Text(
                          'TEAM B',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$teamBPoints',
                          style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            fixedSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+1 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(height: 6),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            minimumSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+2 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB71C2D),
                            minimumSize: Size(110, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Text(
                            '+3 Point',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints = 0;
                          teamBPoints = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(110, 40),
                        backgroundColor: Color(0xFFB71C2D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(2),
                        ),
                      ),

                      child: Text(
                        'RESET',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
