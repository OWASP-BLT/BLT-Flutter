import 'dart:io';

//import 'package:../state_container.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//import '../services/api.dart';

class ReportBug extends StatefulWidget {
  @override
  _ReportBugState createState() => _ReportBugState();
}

class _ReportBugState extends State<ReportBug> {
  final _messageTextController = TextEditingController();
  final _messageTitleTextController = TextEditingController();
  String _messageValue = '';
  late String token;

  File _image = File("");
  bool? anonymous = false;
  bool isLoading = false;
  bool isButtonDisable = false;
  final picker = ImagePicker();

  Future _pickImageFromGallery() async {
    final imageFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (imageFile != null) {
        _image = File(imageFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _showThankYouDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thank you for reporting an issue.'),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                _messageTextController.clear();
                setState(() {
                  _messageValue = _messageTextController.text;
                  //_image = null;
                  //file = null;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/background_bug.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(173, 216, 230, 1),
                blurRadius: 10.0,
                spreadRadius: 8.0,
                offset: Offset(5.5, 5.5), // shadow direction: bottom right
              )
            ],
          ),
          //
          margin: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.15,
            MediaQuery.of(context).size.height * 0.10,
            MediaQuery.of(context).size.width * 0.15,
            MediaQuery.of(context).size.height * 0.10,
          ),
          child: Container(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        child: Center(
                          child: Text(
                            "FIND BUGS",
                            style: TextStyle(
                              color: Color.fromRGBO(222, 70, 84, 1),
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: 0.0,
                      ),
                      child: Container(
                        child: Center(
                          child: Text(
                            "WIN POINTS & PRIZES!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Material(
                        elevation: 25,
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        child: TextField(
                          controller: _messageTitleTextController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 30, right: 30),
                            hintText: "Enter the URL of Issue",
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _messageValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 30.0),
                      child: Material(
                        elevation: 25,
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        child: TextField(
                          controller: _messageTextController,
                          maxLines: 5,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(30.0),
                            hintText: "Enter the description of the issue here",
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _messageValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.043,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 15,
                                  primary: Color.fromRGBO(
                                      255, 102, 102, 1), // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                child: Text(
                                  "Select Image",
                                ),
                                onPressed: () {
                                  _pickImageFromGallery();
                                  setState(() {
                                    _messageTextController.text = _messageValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.043,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 20,
                                primary: Color.fromRGBO(
                                    255, 102, 102, 1), // background
                                onPrimary: Colors.white, // foreground
                              ),
                              child: Text(
                                "  Add (+3pts)",
                              ),
                              onPressed: () {
                                uploadBtnPress();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.24,
                      ),
                      margin: EdgeInsets.only(top: 0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: this.anonymous,
                            activeColor: Colors.red,
                            onChanged: (bool? value) {
                              setState(() {
                                this.anonymous = value;
                              });
                            },
                          ),
                          Text("Report Privately"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Center(
                        child: _image.path == ""
                            ? Text('No image selected.')
                            : Image.file(_image),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Function? uploadBtnPress() {
    if (isButtonDisable) {
      return null;
    } else {
      print('return upload issue');
      uploadIssue();
      return null;
    }
  }

  void uploadIssue() async {
    if (_image.path != "") {
      setState(() {
        isLoading = true;
        isButtonDisable = true;
      });
      // await RestDatasource().reportIssue(
      //     _image, _messageValue, StateContainer.of(context).loggedInUser.token);

      _showThankYouDialog(context);

      setState(() {
        isLoading = false;
        isButtonDisable = false;
      });
    }
  }
}
