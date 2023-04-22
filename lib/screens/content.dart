import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
          ),
          child: Center(
            child: Text(
              "Content",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            child: Container(
                height: 180,
                width: 920,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.green[300]),
                child: Image(
                  image: AssetImage("lib/images/fertility period.jpg"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 165, left: 20, right: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 47,
              width: 520,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.65),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Fertility",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ]),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            child: Container(
                height: 180,
                width: 820,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 26, 1, 27)),
                child: Image(
                  image: AssetImage("lib/images/sex image period.jpg"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 165, left: 20, right: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 51,
              width: 520,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.65),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sex",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ]),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            child: Container(
                height: 180,
                width: 820,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 101, 3, 3)),
                child: Image(
                  image: AssetImage("lib/images/menstruation period.jpg"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 165, left: 20, right: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 51,
              width: 520,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.65),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Menstruation",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ])
      ],
    ));
  }
}
