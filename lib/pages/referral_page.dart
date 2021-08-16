import 'package:flutter/material.dart';
import 'package:bugheist/util/transform.dart';

class ReferralPageWidget extends StatelessWidget {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        child: Container(
          width: 255.0,
          height: 566.1738891601562,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Container(
                    color: Color.fromARGB(255, 253, 138, 138),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  width: null,
                  height: null,
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    double percentWidth = 1.0145278033088236;
                    double scaleX =
                        (constraints.maxWidth * percentWidth) / 258.70458984375;

                    double percentHeight = 1.0;
                    double scaleY = (constraints.maxHeight * percentHeight) /
                        566.1738891601562;

                    return Stack(children: [
                      TransformHelper.translateAndScale(
                        translateX:
                            constraints.maxWidth * -0.007263891369688745,
                        translateY:
                            constraints.maxHeight * 5.858850503712703e-9,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: Image.asset(
                          "assets/referral_page_assets/vector7.png",
                        ),
                      )
                    ]);
                  }),
                ),
                Positioned(
                  left: null,
                  top: 122.31202697753906,
                  right: null,
                  bottom: null,
                  width: 154.09976196289062,
                  height: 79.23358154296875,
                  child: TransformHelper.translate(
                      x: -1.50,
                      y: 0.00,
                      z: 0,
                      child: Container(
                        width: 154.09976196289062,
                        height: 79.23358154296875,
                        child: Image.asset(
                          "assets/referral_page_assets/vector6.png",
                        ),
                      )),
                ),
                Positioned(
                  left: null,
                  top: 44.34782791137695,
                  right: null,
                  bottom: null,
                  width: 14.51836109161377,
                  height: 11.329590797424316,
                  child: TransformHelper.translate(
                    x: -109.15,
                    y: 0.00,
                    z: 0,
                    child: Container(
                      width: 14.51836109161377,
                      height: 11.329590797424316,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset(
                              "assets/referral_page_assets/vector5.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: null,
                  top: 88.08004760742188,
                  right: null,
                  bottom: null,
                  width: 166.89881896972656,
                  height: 162.31346130371094,
                  child: TransformHelper.translate(
                    x: -3.02,
                    y: 0.00,
                    z: 0,
                    child: Container(
                      width: 166.89881896972656,
                      height: 162.31346130371094,
                      child: Image.asset(
                        "assets/referral_page_assets/vector4.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: null,
                  top: 377.6956481933594,
                  right: null,
                  bottom: null,
                  width: 55.356239318847656,
                  height: 22.308439254760742,
                  child: TransformHelper.translate(
                    x: 73.13,
                    y: 0.00,
                    z: 0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 15,
                        primary: Color.fromRGBO(220, 131, 142, 1), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 6),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  width: null,
                  height: null,
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    double percentWidth = 0.2713067148246017;
                    double scaleX = (constraints.maxWidth * percentWidth) /
                        69.18321228027344;

                    double percentHeight = 0.000929471395721014;
                    double scaleY = (constraints.maxHeight * percentHeight) /
                        0.5262424349784851;

                    return Stack(children: [
                      TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.057198079427083336,
                        translateY: constraints.maxHeight * 0.5034880257450443,
                        translateZ: 0,
                        scaleX: scaleX * 3.2,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: Container(
                          width: 69.18321228027344,
                          height: 0.5262424349784851,
                          child: Image.asset(
                            "assets/referral_page_assets/vector1.png",
                          ),
                        ),
                      )
                    ]);
                  }),
                ),
                Positioned(
                  left: null,
                  top: 439.7826232910156,
                  right: null,
                  bottom: null,
                  width: 84.27337646484375,
                  height: 16.78260898590088,
                  child: TransformHelper.translate(
                    x: 2.34,
                    y: 0.00,
                    z: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '''Invite Company?''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.4285714680693447,
                          fontSize: 10.34782600402832,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: null,
                  top: 381.0,
                  right: null,
                  bottom: null,
                  width: 160.27337646484375,
                  height: 19.78260898590088,
                  child: TransformHelper.translate(
                    x: -72.86,
                    y: 0.00,
                    z: 0,
                    // child: Text(
                    //   '''Email''',
                    //   overflow: TextOverflow.visible,
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     height: 1.4285714680693447,
                    //     fontSize: 10.34782600402832,
                    //     fontFamily: 'Open Sans',
                    //     fontWeight: FontWeight.w400,
                    //     color: Color.fromARGB(255, 51, 51, 51),
                    //   ),
                    // )),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          height: 1.4285714680693447,
                          fontSize: 10.34782600402832,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: null,
                  top: 291.9565124511719,
                  right: null,
                  bottom: null,
                  width: 98.32002258300781,
                  height: 31.565217971801758,
                  child: TransformHelper.translate(
                      x: -2.01,
                      y: 0.00,
                      z: 0,
                      child: Text(
                        '''Invite 2 friends and get 1 point''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.4285714680693447,
                          fontSize: 10.34782600402832,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                      )),
                ),
                Positioned(
                  left: null,
                  top: 41.39130783081055,
                  right: null,
                  bottom: null,
                  width: 157.8511505126953,
                  height: 16.78260898590088,
                  child: TransformHelper.translate(
                      x: -7.70,
                      y: 0.00,
                      z: 0,
                      child: Text(
                        '''Invite Your Friends''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 0.8333333691740356,
                          fontSize: 17.7391300201416,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 51, 51, 51),
                        ),
                      )),
                )
              ]),
        ),
      ),
    );
  }
}
