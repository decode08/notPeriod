import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Analysis extends StatefulWidget {
  const Analysis({super.key});

  @override
  State<Analysis> createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
        ),
        child: Center(
          child: Text(
            "Analysis",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(17.0),
        child: Row(children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  "Your cycle history, at a glance",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Look back at your past cycles to identify patterns in your body",
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            "lib/images/search period.jpg",
            height: 150,
            width: 100,
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Row(children: [
          Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Cycle length",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 9,
                      percent: 0.89,
                      progressColor: Color.fromARGB(255, 4, 113, 135),
                      backgroundColor: Colors.white,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '   _\nday',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  )
                ],
              )),
          Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Cycle variation",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 9,
                      percent: 0.89,
                      progressColor: Colors.grey[400],
                      backgroundColor: Color.fromARGB(255, 4, 113, 135),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '   _\nday',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  )
                ],
              )),
          Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Period length",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 9,
                      percent: 0.15,
                      progressColor: Colors.red,
                      backgroundColor: Color.fromARGB(255, 173, 176, 176),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '   _\nday',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  )
                ],
              )),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 35, left: 50, right: 50),
        child: Image.asset(
          'lib/images/noHistory.png',
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "No cycle history yet",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Track your period to start getting insights.",
            style: TextStyle(fontSize: 15, color: Colors.grey[600])),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 4, 113, 135),
          onPressed: () {},
          label: Text("Tap to track"),
          icon: Icon(Icons.add),
        ),
      )
    ]));
  }
}
