import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:internship/screens/cycle.dart';
import 'package:internship/screens/analysis.dart';
import 'package:internship/screens/calendar.dart';
import 'package:internship/screens/content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Cycle(),
    Calendar(),
    Analysis(),
    Content(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Cycle(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 4, 113, 135),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Cycle(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.circle_outlined,
                          color: currentTab == 0
                              ? Color.fromARGB(255, 0, 12, 14)
                              : Color.fromARGB(255, 4, 113, 135),
                        ),
                        Text(
                          'Cycle',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Color.fromARGB(255, 0, 12, 14)
                                  : Color.fromARGB(255, 4, 113, 135)),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Calendar(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.calendar_month_outlined,
                            color: currentTab == 1
                                ? Color.fromARGB(255, 0, 12, 14)
                                : Color.fromARGB(255, 4, 113, 135)),
                        Text(
                          'Calendar',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Color.fromARGB(255, 0, 12, 14)
                                  : Color.fromARGB(255, 4, 113, 135)),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Analysis(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.analytics_outlined,
                            color: currentTab == 2
                                ? Color.fromARGB(255, 0, 12, 14)
                                : Color.fromARGB(255, 4, 113, 135)),
                        Text(
                          'Analysis',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Color.fromARGB(255, 0, 12, 14)
                                  : Color.fromARGB(255, 4, 113, 135)),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Content(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.menu_book_outlined,
                            color: currentTab == 3
                                ? Color.fromARGB(255, 0, 12, 14)
                                : Color.fromARGB(255, 4, 113, 135)),
                        Text(
                          'Content',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Color.fromARGB(255, 0, 12, 14)
                                  : Color.fromARGB(255, 4, 113, 135)),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
