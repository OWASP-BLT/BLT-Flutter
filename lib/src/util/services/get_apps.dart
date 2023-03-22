import 'dart:io';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AppListWidget extends StatefulWidget {
  TextEditingController titleController;
  String? packageID;
  bool buttonPressed;
  AppListWidget(
      {Key? key,
      required this.titleController,
      required this.packageID,
      required this.buttonPressed})
      : super(key: key);
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
          // use auto complete to filter apps and return the selected app
          return Autocomplete(
            displayStringForOption: (option) {
              return option is Application ? option.appName : '';
            },
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<Application>.empty();
              }
              return _appList.where((Application app) {
                return app.appName
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (Application app) {
              widget.titleController.text = app.appName;
              widget.packageID = app.packageName;
            },
            fieldViewBuilder: (BuildContext context,
                TextEditingController textEditingController,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted) {
              return Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    child: TextFormField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      onFieldSubmitted: (String value) {
                        onFieldSubmitted();
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        hintText: 'Enter the URL or app name of the issue ...',
                        hintStyle: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      _validateInput(textEditingController.text),
                      style: TextStyle(
                        color: Color(0xFFE53935),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              );
            },
            optionsViewBuilder: (BuildContext context,
                AutocompleteOnSelected<Application> onSelected,
                Iterable<Application> options) {
              return Platform.isIOS
                  ? Container()
                  : Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        elevation: 4.0,
                        child: SizedBox(
                          height: 200.0,
                          child: ListView(
                            padding: EdgeInsets.all(8.0),
                            children: options.map((Application app) {
                              return GestureDetector(
                                onTap: () {
                                  widget.titleController.text = app.appName;
                                  widget.packageID = app.packageName;
                                  onSelected(app);
                                },
                                child: ListTile(
                                  leading: app is ApplicationWithIcon
                                      ? Image.memory(app.icon)
                                      : Icon(Icons.android),
                                  title: Text(app.appName),
                                  contentPadding: EdgeInsets.all(0),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    );
            },
          );
        }
      },
    );
  }

  String _validateInput(String value) {
    if (value.isEmpty && widget.buttonPressed) {
      return "This field is required";
    }
    // Add any other conditions you want to check
    return "";
  }
}
