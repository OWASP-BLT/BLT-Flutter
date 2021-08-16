import 'package:flutter/material.dart';
import 'package:bugheist/util/transform.dart';

class CompanyDashboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 971.0,
              child: Stack(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 456.0,
                      height: 971.0,
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            left: 4.0,
                            top: 0.0,
                            right: 0.0,
                            bottom: null,
                            width: null,
                            height: 971.0,
                            child: Container(
                              width: 452.0,
                              height: 971.0,
                              child: Stack(
                                fit: StackFit.expand,
                                alignment: Alignment.center,
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: 0.0,
                                    bottom: null,
                                    width: null,
                                    height: 971.0,
                                    child: Container(
                                      width: 452.0,
                                      height: 971.0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.zero,
                                        child: Image.asset(
                                          "assets/images/1560c904325898904a885bbc07fadb311b0f2203.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 452.0,
                                          height: 971.0,
                                          colorBlendMode: BlendMode.dstATop,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 83.5,
                                    right: null,
                                    bottom: null,
                                    width: 19.002460479736328,
                                    height: 14.724892616271973,
                                    child: TransformHelper.translate(
                                      x: -149.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 19.002460479736328,
                                        height: 14.724892616271973,
                                        child: Image.asset(
                                          "assets/company_details/Vector1.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 291.5733642578125,
                                    right: null,
                                    bottom: null,
                                    width: 137.39126586914062,
                                    height: 34.809814453125,
                                    child: TransformHelper.translate(
                                      x: -111.04,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 137.39126586914062,
                                        height: 34.809814453125,
                                        child: Image.asset(
                                          "assets/company_details/Vector2.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 292.73370361328125,
                                    right: null,
                                    bottom: null,
                                    width: 137.39129638671875,
                                    height: 34.809783935546875,
                                    child: TransformHelper.translate(
                                      x: 106.49,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 137.39129638671875,
                                        height: 34.809783935546875,
                                        child: Image.asset(
                                          "assets/company_details/Vector3.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 393.5,
                                    right: null,
                                    bottom: null,
                                    width: 137.3913116455078,
                                    height: 34.809722900390625,
                                    child: TransformHelper.translate(
                                      x: -6.30,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 137.3913116455078,
                                        height: 34.809722900390625,
                                        child: Image.asset(
                                          "assets/company_details/Vector4.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 694.0,
                                    right: null,
                                    bottom: null,
                                    width: 79.91546630859375,
                                    height: 75.42108154296875,
                                    child: TransformHelper.translate(
                                      x: -123.04,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 79.91546630859375,
                                        height: 75.42108154296875,
                                        child: Image.asset(
                                          "assets/company_details/Vector5.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 693.6617431640625,
                                    right: null,
                                    bottom: null,
                                    width: 77.381591796875,
                                    height: 73.02973937988281,
                                    child: TransformHelper.translate(
                                      x: -6.69,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 77.381591796875,
                                        height: 73.02973937988281,
                                        child: Image.asset(
                                          "assets/company_details/Vector6.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 694.0,
                                    right: null,
                                    bottom: null,
                                    width: 79.9154052734375,
                                    height: 75.42108154296875,
                                    child: TransformHelper.translate(
                                      x: 109.96,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 79.9154052734375,
                                        height: 75.42108154296875,
                                        child: Image.asset(
                                          "assets/company_details/Vector7.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 83.0,
                                    right: null,
                                    bottom: null,
                                    width: 80.0,
                                    height: 80.0,
                                    child: TransformHelper.translate(
                                      x: -10.00,
                                      y: 0.00,
                                      z: 0,
                                      child: Container(
                                        width: 80.0,
                                        height: 80.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.zero,
                                          child: Image.asset(
                                            "assets/images/2ec19991ebcbd32e7da553ad9a1b4a88fbcfcf94.png",
                                            color: null,
                                            fit: BoxFit.cover,
                                            width: 80.0,
                                            height: 80.0,
                                            colorBlendMode: BlendMode.dstATop,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 210.5,
                                    right: null,
                                    bottom: null,
                                    width: 150.0,
                                    height: 28.0,
                                    child: Text(
                                      '''Google''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 0.9523791472117106,
                                        fontSize: 24.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 529.3576049804688,
                                    right: null,
                                    bottom: null,
                                    width: 215.0,
                                    height: 28.255615234375,
                                    child: TransformHelper.translate(
                                      x: -3.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''10 hours, 39 minutes ago''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 0.9523791472117106,
                                          fontSize: 24.0,
                                          fontFamily: 'Pecita',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 51, 51, 51),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 397.5,
                                    right: null,
                                    bottom: null,
                                    width: 80.56520080566406,
                                    height: 31.6875,
                                    child: TransformHelper.translate(
                                      x: -3.72,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''dropped''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.523806635538737,
                                          fontSize: 15.0,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 51, 51, 51),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 357.5,
                                    right: null,
                                    bottom: null,
                                    width: 100.4637451171875,
                                    height: 28.6875,
                                    child: TransformHelper.translate(
                                      x: -8.77,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''Email Event''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.523806635538737,
                                          fontSize: 15.0,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 248, 14, 14),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 296.0,
                                    right: null,
                                    bottom: null,
                                    width: 113.0,
                                    height: 29.0,
                                    child: TransformHelper.translate(
                                      x: 107.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''6 Bugs Closed''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.523806635538737,
                                          fontSize: 15.0,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 51, 51, 51),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 296.0,
                                    right: null,
                                    bottom: null,
                                    width: 113.0,
                                    height: 29.0,
                                    child: TransformHelper.translate(
                                      x: -113.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''11 Bugs Open''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.523806635538737,
                                          fontSize: 15.0,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 51, 51, 51),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 485.0,
                                    right: null,
                                    bottom: null,
                                    width: 169.0,
                                    height: 28.255645751953125,
                                    child: TransformHelper.translate(
                                      x: 7.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''Time of Last Event''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.2698388629489474,
                                          fontSize: 18.0,
                                          fontFamily: 'Paytone One',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 247, 87, 87),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 806.0,
                                    right: null,
                                    bottom: null,
                                    width: 111.0,
                                    height: 31.0,
                                    child: TransformHelper.translate(
                                      x: -116.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''Joe''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.2698388629489474,
                                          fontSize: 18.0,
                                          fontFamily: 'Paytone One',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 247, 87, 87),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 806.0,
                                    right: null,
                                    bottom: null,
                                    width: 111.0,
                                    height: 31.0,
                                    child: TransformHelper.translate(
                                      x: -2.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''Rev''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.2698388629489474,
                                          fontSize: 18.0,
                                          fontFamily: 'Paytone One',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 247, 87, 87),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 806.0,
                                    right: null,
                                    bottom: null,
                                    width: 111.0,
                                    height: 31.0,
                                    child: TransformHelper.translate(
                                      x: 117.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''Olly''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.2698388629489474,
                                          fontSize: 18.0,
                                          fontFamily: 'Paytone One',
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 247, 87, 87),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: null,
                                    top: 529.3576049804688,
                                    right: null,
                                    bottom: null,
                                    width: 215.0,
                                    height: 28.255615234375,
                                    child: TransformHelper.translate(
                                      x: -3.50,
                                      y: 0.00,
                                      z: 0,
                                      child: Text(
                                        '''10 hours, 39 minutes ago''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 0.9523791472117106,
                                          fontSize: 24.0,
                                          fontFamily: 'Pecita',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(255, 10, 0, 0),

                                          /* letterSpacing: 0.0, */
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
