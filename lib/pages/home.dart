import 'package:bugheist/pages/feed.dart';
import 'package:bugheist/pages/issues.dart';
import 'package:bugheist/pages/leaderboard.dart';
import 'package:bugheist/pages/login_signup.dart';
import 'package:bugheist/pages/report_bug.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List<dynamic> names = [];
  List<dynamic> filteredNames = [];
  Icon _searchIcon = new Icon(Icons.search);
  bool _ifSearching = false;
  Widget _appBarTitle = new Image.asset(
    'assets/bugheist_logo.png',
    fit: BoxFit.cover,
    height: 30,
  );
  void _getNames() async {
    final response =
        await get(Uri.parse('https://www.bugheist.com/api/v1/issues/'));
    final Map<String, dynamic> searchData = json.decode(response.body);
    List<dynamic> tempList = [];
    for (int i = 0; i < searchData['results'].length; i++) {
      tempList.add(searchData['results'][i]);
      //print(tempList[i]);
    }
    //print(tempList);
    setState(() {
      names = tempList;
      filteredNames = names;
    });
  }

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

  void _searchPressed() {
    setState(
      () {
        if (this._searchIcon.icon == Icons.search) {
          this._searchIcon = new Icon(Icons.close);
          this._appBarTitle = new TextField(
            controller: _filter,
            decoration: new InputDecoration(
                prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
          );
        } else {
          this._searchIcon = new Icon(Icons.search);
          this._appBarTitle = new Text('Search Example');
          filteredNames = names;
          _filter.clear();
        }
        this._ifSearching = true;
      },
    );
  }

  _HomeState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }
  Widget _buildList() {
    if (_searchText.isNotEmpty) {
      List<dynamic> tempList = [];
      for (int i = 0; i < (filteredNames.length); i++) {
        if (filteredNames[i]['description']
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    //print(names);
    return Container(
      child: ListView.builder(
        itemCount: names == null ? 0 : filteredNames.length,
        itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            title: Text(filteredNames[index]['description']),
            onTap: () => print(filteredNames[index]['description']),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    this._getNames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _appBarTitle,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              _searchPressed();
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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFDC4654),
              ),
              accountName: Text(
                "anonymous",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "anonymous@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "AN",
                  style: TextStyle(fontSize: 40.0),
                ),
                foregroundColor: Color(0xFFDC4654),
              ),
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Update trhe state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginSignUp(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Social'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Stats'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Terms and Conditions'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: _ifSearching == true ? _buildList() : _children[_selectedIndex],
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
    );
  }
}
