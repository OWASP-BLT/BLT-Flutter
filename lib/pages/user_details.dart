import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bugheist/util/transform.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 1399.0,
              child: Stack(children: [
                Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 318.0,
                      height: 1399.0,
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Container(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Positioned(
                              left: 43.0,
                              top: 107.0,
                              right: 40.0,
                              bottom: null,
                              width: null,
                              height: 200.0,
                              child: Container(
                                width: 235.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                                child: Stack(
                                    fit: StackFit.expand,
                                    alignment: Alignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Image.asset(
                                          "assets/images/test.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 235.0,
                                          height: 200.0,
                                          colorBlendMode: BlendMode.dstATop,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 128.0,
                              right: 51.0,
                              bottom: null,
                              width: 97.0,
                              height: 37.0,
                              child: Container(
                                width: 97.0,
                                height: 37.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 37.0,
                              top: 337.0,
                              right: 50.0,
                              bottom: null,
                              width: null,
                              height: 34.0,
                              child: Container(
                                width: 231.0,
                                height: 34.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 212, 63, 58),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 217, 83, 79),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 388.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 442.0,
                              right: 55.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 221.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 496.0,
                              right: 55.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 221.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 550.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 604.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 658.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 712.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 70.0,
                              top: 344.0,
                              right: 87.0,
                              bottom: null,
                              width: null,
                              height: 22.0,
                              child: Text(
                                '''Send a tip''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.4285714285714286,
                                  fontSize: 14.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 41.0,
                              top: 391.0,
                              right: 53.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''General 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 101.0,
                              top: 444.0,
                              right: 112.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Number 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 68, 68),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 92.0,
                              top: 498.0,
                              right: 104.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Functional 1''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 136, 0),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 86.0,
                              top: 552.0,
                              right: 96.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Performance 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 200, 81),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100.0,
                              top: 606.0,
                              right: 112.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Security 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 153, 204),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 109.0,
                              top: 661.0,
                              right: 125.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Typo 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 103.0,
                              top: 716.0,
                              right: 117.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Design 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 239, 108, 0),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 766.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 820.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42.0,
                              top: 874.0,
                              right: 54.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 1019.0,
                              right: null,
                              bottom: null,
                              width: 47.0,
                              height: 17.0,
                              child: TransformHelper.translate(
                                  x: -120.50,
                                  y: 0.00,
                                  z: 0,
                                  child: Container(
                                    width: 47.0,
                                    height: 17.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: kIsWeb
                                          ? []
                                          : [
                                              BoxShadow(
                                                color:
                                                    Color.fromARGB(63, 0, 0, 0),
                                                offset: Offset(0.0, -1.0),
                                                blurRadius: 0.0,
                                              )
                                            ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                      ),
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: 43.0,
                              top: 930.0,
                              right: 53.0,
                              bottom: null,
                              width: null,
                              height: 50.0,
                              child: Container(
                                width: 222.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  boxShadow: kIsWeb
                                      ? []
                                      : [
                                          BoxShadow(
                                            color: Color.fromARGB(63, 0, 0, 0),
                                            offset: Offset(0.0, -1.0),
                                            blurRadius: 0.0,
                                          )
                                        ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 51, 51, 51),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 45.0,
                              top: 1067.0,
                              right: 45.0,
                              bottom: null,
                              width: null,
                              height: 271.0,
                              child: Container(
                                width: 235.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                                child: Stack(
                                    fit: StackFit.expand,
                                    alignment: Alignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Image.asset(
                                          "assets/images/graph.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 235.0,
                                          height: 200.0,
                                          colorBlendMode: BlendMode.dstATop,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Positioned(
                              left: 75.0,
                              top: 768.0,
                              right: 87.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Bugs Reported 1''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 136, 0),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 96.0,
                              top: 823.0,
                              right: 111.0,
                              bottom: null,
                              width: null,
                              height: 31.0,
                              child: Text(
                                '''Points 3''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 153, 204),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 87.0,
                              top: 879.0,
                              right: 94.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Open Issues 1''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 200, 81),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: 80.0,
                              top: 933.0,
                              right: 89.0,
                              bottom: null,
                              width: null,
                              height: 47.0,
                              child: Text(
                                '''Closed Issues 0''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 4.5,
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 68, 68),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 44.0,
                              right: null,
                              bottom: null,
                              width: 132.0,
                              height: 49.0,
                              child: TransformHelper.translate(
                                  x: 5.00,
                                  y: 0.00,
                                  z: 0,
                                  child: Text(
                                    '''ankittt''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.1282051282051282,
                                      fontSize: 39.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 51, 51, 51),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 138.0,
                              right: 69.0,
                              bottom: null,
                              width: 58.0,
                              height: 23.0,
                              child: Text(
                                '''Unrated''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: 12.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 1016.0,
                              right: null,
                              bottom: null,
                              width: 86.0,
                              height: 13.0,
                              child: TransformHelper.translate(
                                  x: -118.00,
                                  y: 0.00,
                                  z: 0,
                                  child: Text(
                                    '''Stats''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 1.8181818181818181,
                                      fontSize: 11.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 51, 51, 51),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 1019.0,
                              right: null,
                              bottom: null,
                              width: 71.0,
                              height: 17.0,
                              child: TransformHelper.translate(
                                  x: -54.50,
                                  y: 0.00,
                                  z: 0,
                                  child: Container(
                                    width: 71.0,
                                    height: 17.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: kIsWeb
                                          ? []
                                          : [
                                              BoxShadow(
                                                color:
                                                    Color.fromARGB(63, 0, 0, 0),
                                                offset: Offset(0.0, -1.0),
                                                blurRadius: 0.0,
                                              )
                                            ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                      ),
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 1016.0,
                              right: null,
                              bottom: null,
                              width: 86.0,
                              height: 13.0,
                              child: TransformHelper.translate(
                                  x: -53.00,
                                  y: 0.00,
                                  z: 0,
                                  child: Text(
                                    '''Followers[0]''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 1.8181818181818181,
                                      fontSize: 11.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 51, 51, 51),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 1019.0,
                              right: null,
                              bottom: null,
                              width: 71.0,
                              height: 17.0,
                              child: TransformHelper.translate(
                                  x: 24.50,
                                  y: 0.00,
                                  z: 0,
                                  child: Container(
                                    width: 71.0,
                                    height: 17.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: kIsWeb
                                          ? []
                                          : [
                                              BoxShadow(
                                                color:
                                                    Color.fromARGB(63, 0, 0, 0),
                                                offset: Offset(0.0, -1.0),
                                                blurRadius: 0.0,
                                              )
                                            ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                      ),
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 1016.0,
                              right: null,
                              bottom: null,
                              width: 86.0,
                              height: 15.0,
                              child: TransformHelper.translate(
                                  x: 28.00,
                                  y: 0.00,
                                  z: 0,
                                  child: Text(
                                    '''Following[0]''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 1.8181818181818181,
                                      fontSize: 11.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 51, 51, 51),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: null,
                              top: 1019.0,
                              right: null,
                              bottom: null,
                              width: 83.0,
                              height: 17.0,
                              child: TransformHelper.translate(
                                x: 108.50,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 83.0,
                                  height: 17.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    boxShadow: kIsWeb
                                        ? []
                                        : [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(63, 0, 0, 0),
                                              offset: Offset(0.0, -1.0),
                                              blurRadius: 0.0,
                                            )
                                          ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(3.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 221, 221, 221),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 1016.0,
                              right: null,
                              bottom: null,
                              width: 86.0,
                              height: 15.0,
                              child: TransformHelper.translate(
                                  x: 107.00,
                                  y: 0.00,
                                  z: 0,
                                  child: Text(
                                    '''Bookmarks[0]''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 1.8181818181818181,
                                      fontSize: 11.0,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 51, 51, 51),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  )),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
