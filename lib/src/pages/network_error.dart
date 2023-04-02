import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/login_provider.dart';
import '../providers/authstate_provider.dart';
import './welcome.dart';

class NetworkErrorPage extends StatelessWidget {
    const NetworkErrorPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      return
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
                  backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Profile"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.no_accounts,
                  size: 100.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                 "Not able to find account. Check your connection",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                    color: Color(0xFF737373),
                    fontSize: 14,
                          ),
                        ),
                )
              ]),
          )),
      );
    }
}