import 'dart:io';

import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppListWidget extends StatefulWidget {
  TextEditingController titleController;
  AppListWidget({Key? key, required this.titleController}) : super(key: key);
  @override
  _AppListWidgetState createState() => _AppListWidgetState();
}

class _AppListWidgetState extends State<AppListWidget> {
  late Future<List<Application>> _appListFuture;
  late List<Application> _appList = [];

  @override
  void initState() {
    super.initState();
    _appListFuture = getInstalledApps();
  }

  Future<List<Application>> getInstalledApps() async {
    List<Application> apps = await DeviceApps.getInstalledApplications(
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
      includeAppIcons: true,
    );
    setState(() {
      _appList = apps;
    });
    return apps;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _appListFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: _appList.length,
            itemBuilder: (context, index) {
              Application app = _appList[index];
              return GestureDetector(
                child: ListTile(
                  leading: app is ApplicationWithIcon
                      ? Image.memory(app.icon)
                      : Icon(Icons.android),
                  title: Text(app.appName),
                  subtitle: Text(app.packageName),
                ),
                onTap: () {
                  setState(() {
                    widget.titleController.text = app.appName;
                    Navigator.pop(context);
                  });
                },
              );
            },
          );
        }
      },
    );
  }
}
