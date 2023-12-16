import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: TextStyle(
                      fontSize: 110,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamAPoints++;
                      setState(() {});
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamAPoints += 2;

                      setState(() {});
                    },
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamAPoints += 3;
                      setState(() {});
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  ),
                ],
              ),
              SizedBox(
                height: 400,
                child: VerticalDivider(
                  indent: 40,
                  endIndent: 50,
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    '$teamBPoints',
                    style: TextStyle(
                      fontSize: 110,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamBPoints++;
                      setState(() {});
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamBPoints += 2;
                      setState(() {});
                    },
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      teamBPoints += 3;
                      setState(() {});
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 40)),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {
              teamAPoints = 0;
              teamBPoints = 0;
              setState(() {});
            },
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, minimumSize: Size(120, 40)),
          ),
        ],
      ),
    );
  }
}
