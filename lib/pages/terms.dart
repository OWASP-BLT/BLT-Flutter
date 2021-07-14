import 'package:bugheist/pages/appbar.dart';
import 'package:bugheist/util/app_url.dart';
import 'package:flutter/material.dart';
import '../services/api.dart';
import 'package:flutter_html/flutter_html.dart';

class TermsClass extends StatefulWidget {
  @override
  TermsClassState createState() => TermsClassState();
}

class TermsClassState extends State<TermsClass> with TickerProviderStateMixin {
  late AnimationController animationController;
  bool _loading = true;
  late Future _getObj;
  late String renderedUrl;
  String _html = "";
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  void initState() {
    renderedUrl = AppUrl.testTerms;
    _loading = false;
    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animationController.repeat();
    _getObj = ApiBackend().getHTMLData(renderedUrl);
    _loading = true;
    delay().then((result) {
      setState(
        () {
          _loading = false;
          _getObj.then((value) => _html = value);
        },
      );
    });
    super.initState();
  }

  Future delay() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Center(
        child: CircularProgressIndicator(
          valueColor: animationController.drive(
            ColorTween(
              begin: Colors.blueAccent,
              end: Colors.red,
            ),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red[100],
          appBar: CustomAppBar(),
          body: LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        Expanded(
                          child: Html(
                            data: _html,
                            shrinkWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }
  }
}
