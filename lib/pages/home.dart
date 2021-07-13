import 'package:bugheist/pages/feed.dart';
import 'package:bugheist/pages/issues.dart';
import 'package:bugheist/pages/leaderboard.dart';
import 'package:bugheist/pages/report_bug.dart';
import 'package:flutter/material.dart';
import 'package:bugheist/pages/drawer/layer2.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;

  bool isOpen = false;
  bool isPlaying = false;
  int _selectedIndex = 0;
  final List<Widget> _children = [
    PaginatedClass(),
    ReportBug(),
    Feed(),
    LeaderBoard()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4Transform()
          .translate(x: xoffSet, y: yoffSet)
          .rotate(angle)
          .matrix4,
      duration: Duration(milliseconds: 250),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.red[300],
            borderRadius:
                isOpen ? BorderRadius.circular(10) : BorderRadius.circular(0)),
        child: SafeArea(
          child: Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Image.asset(
                    'assets/bugheist_logo.png',
                    fit: BoxFit.cover,
                    height: 30,
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.portrait_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    )
                  ],
                ),
                body: _children[_selectedIndex],
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.bug_report),
                      label: 'Report',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.list),
                      label: 'Issues',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.leaderboard),
                      label: 'Leaderboard',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Color(0xFFDC4654),
                  onTap: _onItemTapped,
                ),
              ),
              !isOpen
                  ? IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Color(0xFF1f186f),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            xoffSet = 150;
                            yoffSet = 80;
                            angle = -0.2;
                            isOpen = true;
                          },
                        );

                        secondLayerState!.setState(
                          () {
                            secondLayerState!.xoffSet = 122;
                            secondLayerState!.yoffSet = 110;
                            secondLayerState!.angle = -0.275;
                          },
                        );
                      },
                    )
                  : IconButton(
                      icon:
                          Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
                      onPressed: () {
                        if (isOpen == true) {
                          setState(
                            () {
                              xoffSet = 0;
                              yoffSet = 0;
                              angle = 0;
                              isOpen = false;
                            },
                          );

                          secondLayerState!.setState(
                            () {
                              secondLayerState!.xoffSet = 0;
                              secondLayerState!.yoffSet = 0;
                              secondLayerState!.angle = 0;
                            },
                          );
                        }
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
