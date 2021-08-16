import 'package:flutter/material.dart';
import 'package:bugheist/util/transform.dart';

class PricingPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 1042.0,
              child: Stack(children: [
                Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 331.0,
                      height: 1042.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          overflow: Overflow.visible,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 231.50892639160156,
                              right: null,
                              bottom: null,
                              width: 258.05792236328125,
                              height: 672.6428833007812,
                              child: TransformHelper.translate(
                                x: 0.08,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 258.05792236328125,
                                  height: 672.6428833007812,
                                  child: Image.asset(
                                      "assets/pricing_pages/Rectangle 5 copy 8.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 288.7340393066406,
                              right: null,
                              bottom: null,
                              width: 301.3866882324219,
                              height: 240.58489990234375,
                              child: TransformHelper.translate(
                                x: 11.64,
                                y: 0.00,
                                z: 0,
                                child: TransformHelper.rotate(
                                  a: 0.96,
                                  b: 0.15,
                                  c: -0.28,
                                  d: 0.99,
                                  child: Container(
                                    width: 301.3866882324219,
                                    height: 240.58489990234375,
                                    child: Image.asset(
                                        "assets/pricing_pages/Vector23.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 383.5446472167969,
                              right: null,
                              bottom: null,
                              width: 105.86959075927734,
                              height: 69.5,
                              child: TransformHelper.translate(
                                x: 1.23,
                                y: 0.00,
                                z: 0,
                                child: Text(
                                  '''\$9''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 48.0,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 255, 255),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 320.1964416503906,
                              right: null,
                              bottom: null,
                              width: 79.81161499023438,
                              height: 53.375,
                              child: TransformHelper.translate(
                                x: 2.58,
                                y: 0.00,
                                z: 0,
                                child: Text(
                                  '''FLEA''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 28.0,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 255, 255),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 437.6785583496094,
                              right: null,
                              bottom: null,
                              width: 88.21739196777344,
                              height: 25.732147216796875,
                              child: TransformHelper.translate(
                                x: 32.00,
                                y: 0.00,
                                z: 0,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: RichText(
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      text: const TextSpan(
                                        style: TextStyle(
                                          height: 1.171875,
                                          fontSize: 18.0,
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),

                                          /* letterSpacing: 0.0, */
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '''/''',
                                            style: TextStyle(

                                                /* letterSpacing: null, */
                                                ),
                                          ),
                                          TextSpan(
                                            text: '''month''',
                                            style: TextStyle(

                                                /* letterSpacing: null, */
                                                ),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 525.2142333984375,
                              right: null,
                              bottom: null,
                              width: 133.9709930419922,
                              height: 51.52685546875,
                              child: TransformHelper.translate(
                                x: 29.79,
                                y: 0.00,
                                z: 0,
                                child: Text(
                                  '''Featured on the Homepage''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 18.0,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 255, 255, 255),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 609.2946166992188,
                              right: null,
                              bottom: null,
                              width: 136.49276733398438,
                              height: 51.52679443359375,
                              child: TransformHelper.translate(
                                x: 29.11,
                                y: 0.00,
                                z: 0,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '''Featured in the Newsletter''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.171875,
                                      fontSize: 18.0,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 255, 255, 255),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 691.0714111328125,
                              right: null,
                              bottom: null,
                              width: 119.31883239746094,
                              height: 54.52679443359375,
                              child: TransformHelper.translate(
                                x: 22.46,
                                y: 0.00,
                                z: 0,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '''Leaderboard Sponsorship''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.171875,
                                      fontSize: 18.0,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 255, 255, 255),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 777.4553833007812,
                              right: null,
                              bottom: null,
                              width: 119.68115234375,
                              height: 51.5267333984375,
                              child: TransformHelper.translate(
                                x: 22.64,
                                y: 0.00,
                                z: 0,
                                child: Text(
                                  '''Monthly bug Hunt Credits''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 18.0,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 255, 255, 255),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 487.2053527832031,
                              right: null,
                              bottom: null,
                              width: 255.5362091064453,
                              height: 2.0,
                              child: TransformHelper.translate(
                                x: 1.34,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 255.5362091064453,
                                  height: 2.0,
                                  child: Image.asset(
                                    "assets/pricing_pages/Line 11.png",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 115.0,
                              right: null,
                              bottom: null,
                              width: 165.07244873046875,
                              height: 26.1875,
                              child: TransformHelper.translate(
                                x: 9.04,
                                y: 0.00,
                                z: 0,
                                child: Text(
                                  '''CHOOSE A PLAN''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 18.0,
                                    fontFamily: 'Work Sans',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 0, 0, 0),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 270.0446472167969,
                              right: -16.0797119140625,
                              bottom: null,
                              width: 37.495208740234375,
                              height: 596.4464111328125,
                              child: Container(
                                width: 37.495208740234375,
                                height: 596.4464111328125,
                                child: Image.asset(
                                  "assets/pricing_pages/Rectangle 5 copy 9.png",
                                ),
                              ),
                            ),
                            Positioned(
                              left: -8.60870361328125,
                              top: 264.91070556640625,
                              right: null,
                              bottom: null,
                              width: 36.144927978515625,
                              height: 592.0178833007812,
                              child: Container(
                                width: 36.144927978515625,
                                height: 592.0178833007812,
                                child: Image.asset(
                                  "assets/pricing_pages/Rectangle 5 copy 10.png",
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 513.6964111328125,
                              right: null,
                              bottom: null,
                              width: 55.3680419921875,
                              height: 57.59027099609375,
                              child: TransformHelper.translate(
                                x: -71.84,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 55.3680419921875,
                                  height: 57.59027099609375,
                                  child: Stack(
                                      fit: StackFit.expand,
                                      alignment: Alignment.center,
                                      overflow: Overflow.visible,
                                      children: [
                                        Positioned(
                                          left: null,
                                          top: 0.0,
                                          right: null,
                                          bottom: null,
                                          width: 55.3680419921875,
                                          height: 57.59027099609375,
                                          child: Container(
                                            width: 55.3680419921875,
                                            height: 57.59027099609375,
                                            child: Stack(
                                                fit: StackFit.expand,
                                                alignment: Alignment.center,
                                                overflow: Overflow.visible,
                                                children: [
                                                  Positioned(
                                                    left: null,
                                                    top: 0.0,
                                                    right: null,
                                                    bottom: null,
                                                    width: 55.3680419921875,
                                                    height: 57.59027099609375,
                                                    child: Container(
                                                      width: 55.3680419921875,
                                                      height: 57.59027099609375,
                                                      child: Stack(
                                                          fit: StackFit.expand,
                                                          alignment:
                                                              Alignment.center,
                                                          overflow:
                                                              Overflow.visible,
                                                          children: [
                                                            Positioned(
                                                              left: null,
                                                              top: 0.0,
                                                              right: null,
                                                              bottom: null,
                                                              width:
                                                                  34.254425048828125,
                                                              height:
                                                                  55.8663330078125,
                                                              child:
                                                                  TransformHelper
                                                                      .translate(
                                                                x: 10.56,
                                                                y: 0.00,
                                                                z: 0,
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      34.254425048828125,
                                                                  height:
                                                                      55.8663330078125,
                                                                  child: Stack(
                                                                      fit: StackFit
                                                                          .expand,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      overflow:
                                                                          Overflow
                                                                              .visible,
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              null,
                                                                          top:
                                                                              0.0,
                                                                          right:
                                                                              null,
                                                                          bottom:
                                                                              null,
                                                                          width:
                                                                              34.254425048828125,
                                                                          height:
                                                                              55.8663330078125,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                34.254425048828125,
                                                                            height:
                                                                                55.8663330078125,
                                                                            child:
                                                                                Image.asset("assets/pricing_pages/Vector21.png"),
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: null,
                                                              top:
                                                                  18.2509765625,
                                                              right: null,
                                                              bottom: null,
                                                              width:
                                                                  35.887306213378906,
                                                              height:
                                                                  39.33929443359375,
                                                              child:
                                                                  TransformHelper
                                                                      .translate(
                                                                x: -9.74,
                                                                y: 0.00,
                                                                z: 0,
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      35.887306213378906,
                                                                  height:
                                                                      39.33929443359375,
                                                                  child: Stack(
                                                                      fit: StackFit
                                                                          .expand,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      overflow:
                                                                          Overflow
                                                                              .visible,
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              null,
                                                                          top:
                                                                              0.0,
                                                                          right:
                                                                              null,
                                                                          bottom:
                                                                              null,
                                                                          width:
                                                                              35.887306213378906,
                                                                          height:
                                                                              39.33929443359375,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                35.887306213378906,
                                                                            height:
                                                                                39.33929443359375,
                                                                            child:
                                                                                Image.asset("assets/pricing_pages/Vector20.png"),
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: null,
                                                              top:
                                                                  1.7586669921875,
                                                              right: null,
                                                              bottom: null,
                                                              width:
                                                                  22.45105743408203,
                                                              height:
                                                                  30.7630615234375,
                                                              child:
                                                                  TransformHelper
                                                                      .translate(
                                                                x: 8.20,
                                                                y: 0.00,
                                                                z: 0,
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      22.45105743408203,
                                                                  height:
                                                                      30.7630615234375,
                                                                  child: Stack(
                                                                      fit: StackFit
                                                                          .expand,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      overflow:
                                                                          Overflow
                                                                              .visible,
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              null,
                                                                          top:
                                                                              0.0,
                                                                          right:
                                                                              null,
                                                                          bottom:
                                                                              null,
                                                                          width:
                                                                              22.45105743408203,
                                                                          height:
                                                                              30.7630615234375,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                22.45105743408203,
                                                                            height:
                                                                                30.7630615234375,
                                                                            child:
                                                                                Image.asset("assets/pricing_pages/Vector19.png"),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              null,
                                                                          top:
                                                                              1.828125,
                                                                          right:
                                                                              null,
                                                                          bottom:
                                                                              null,
                                                                          width:
                                                                              19.78284454345703,
                                                                          height:
                                                                              27.1070556640625,
                                                                          child:
                                                                              TransformHelper.translate(
                                                                            x: 0.00,
                                                                            y: 0.00,
                                                                            z: 0,
                                                                            child:
                                                                                Container(
                                                                              width: 19.78284454345703,
                                                                              height: 27.1070556640625,
                                                                              child: Image.asset("assets/pricing_pages/Vector18.png"),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              null,
                                                                          top:
                                                                              5.888916015625,
                                                                          right:
                                                                              null,
                                                                          bottom:
                                                                              null,
                                                                          width:
                                                                              14.565643310546875,
                                                                          height:
                                                                              18.982177734375,
                                                                          child:
                                                                              TransformHelper.translate(
                                                                            x: 0.00,
                                                                            y: 0.00,
                                                                            z: 0,
                                                                            child:
                                                                                Container(
                                                                              width: 14.565643310546875,
                                                                              height: 18.982177734375,
                                                                              child: Image.asset("assets/pricing_pages/Vector17.png"),
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ),
                                                              ),
                                                            )
                                                          ]),
                                                    ),
                                                  )
                                                ]),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 600.0803833007812,
                              right: null,
                              bottom: null,
                              width: 42.02899169921875,
                              height: 57.5892333984375,
                              child: TransformHelper.translate(
                                x: -78.51,
                                y: 0.00,
                                z: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    width: 42.02899169921875,
                                    height: 57.5892333984375,
                                    child: Stack(
                                        fit: StackFit.expand,
                                        alignment: Alignment.center,
                                        overflow: Overflow.visible,
                                        children: [
                                          Positioned(
                                            left: 0.0,
                                            top: 0.0,
                                            right: 0.0,
                                            bottom: 0.0,
                                            width: null,
                                            height: null,
                                            child: LayoutBuilder(builder:
                                                (BuildContext context,
                                                    BoxConstraints
                                                        constraints) {
                                              final double width =
                                                  constraints.maxWidth *
                                                      0.9791643370708522;

                                              final double height =
                                                  constraints.maxHeight *
                                                      1.000002517111056;

                                              return Stack(children: [
                                                TransformHelper.translate(
                                                    x: constraints.maxWidth *
                                                        0.010424283471163719,
                                                    y: constraints.maxHeight *
                                                        0.000008153350806693676,
                                                    z: 0,
                                                    child: Container(
                                                      width: width,
                                                      height: height,
                                                      child: Container(
                                                        width:
                                                            41.153289794921875,
                                                        height:
                                                            57.589378356933594,
                                                        child: Stack(
                                                            fit:
                                                                StackFit.expand,
                                                            alignment: Alignment
                                                                .center,
                                                            overflow: Overflow
                                                                .visible,
                                                            children: [
                                                              Positioned(
                                                                left: 0.0,
                                                                top: 0.0,
                                                                right: 0.0,
                                                                bottom: 0.0,
                                                                width: null,
                                                                height: null,
                                                                child: LayoutBuilder(builder:
                                                                    (BuildContext
                                                                            context,
                                                                        BoxConstraints
                                                                            constraints) {
                                                                  final double
                                                                      width =
                                                                      constraints
                                                                          .maxWidth;

                                                                  final double
                                                                      height =
                                                                      constraints
                                                                          .maxHeight;

                                                                  return Stack(
                                                                      children: [
                                                                        TransformHelper.translate(
                                                                            x: 0,
                                                                            y: 0,
                                                                            z: 0,
                                                                            child: Container(
                                                                              width: width,
                                                                              height: height,
                                                                              child: Container(
                                                                                width: 41.153289794921875,
                                                                                height: 57.589378356933594,
                                                                                child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
                                                                                  Positioned(
                                                                                    left: 0.0,
                                                                                    top: 0.0,
                                                                                    right: 0.0,
                                                                                    bottom: 0.0,
                                                                                    width: null,
                                                                                    height: null,
                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                      final double width = constraints.maxWidth;

                                                                                      final double height = constraints.maxHeight;

                                                                                      return Stack(children: [
                                                                                        TransformHelper.translate(
                                                                                            x: 0,
                                                                                            y: 0,
                                                                                            z: 0,
                                                                                            child: Container(
                                                                                              width: width,
                                                                                              height: height,
                                                                                              child: Container(
                                                                                                width: 41.153289794921875,
                                                                                                height: 57.589378356933594,
                                                                                                child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 1.0;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 41.153289794921875;

                                                                                                      double percentHeight = 0.8749926308447337;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 50.390281677246094;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: 0,
                                                                                                          translateY: constraints.maxHeight * 0.12500861942767663,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 41.153289794921875, height: 50.390281677246094, child: Image.asset("assets/pricing_pages/Vector16.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.2978763938521822;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 12.258593559265137;

                                                                                                      double percentHeight = 0.16666730698277968;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 9.5982666015625;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(translateX: constraints.maxWidth * 0.3191473085870267, translateY: constraints.maxHeight * 0.3124813618331411, translateZ: 0, scaleX: scaleX, scaleY: scaleY, scaleZ: 1, child: Container(width: 12.258593559265137, height: 9.5982666015625, child: Image.asset("assets/pricing_pages/Vector15.png")))
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.3404223018944599;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 14.00949764251709;

                                                                                                      double percentHeight = 0.04166550195373694;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 2.3994903564453125;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.3191473085870267,
                                                                                                          translateY: constraints.maxHeight * 0.5208123491807155,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 14.00949764251709, height: 2.3994903564453125, child: Image.asset("assets/pricing_pages/Vector14.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.3404223018944599;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 14.00949764251709;

                                                                                                      double percentHeight = 0.04166550195373694;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 2.3994903564453125;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.3191473085870267,
                                                                                                          translateY: constraints.maxHeight * 0.6041569984453566,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 14.00949764251709, height: 2.3994903564453125, child: Image.asset("assets/pricing_pages/Vector13.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.11776368527954166;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 4.846363067626953;

                                                                                                      double percentHeight = 0.11531335304182169;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 6.640824317932129;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.8723492985967486,
                                                                                                          translateY: constraints.maxHeight * 0.13468875834536134,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 4.846363067626953, height: 6.640824317932129, child: Image.asset("assets/pricing_pages/Vector12.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.11776967568303114;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 4.846609592437744;

                                                                                                      double percentHeight = 0.11531109261554338;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 6.6406941413879395;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.009883643625033463,
                                                                                                          translateY: constraints.maxHeight * 0.13469628481967263,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 4.846609592437744, height: 6.6406941413879395, child: Image.asset("assets/pricing_pages/Vector11.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.08512055148233867;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 3.50299072265625;

                                                                                                      double percentHeight = 0.14583475472470492;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 8.39853286743164;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.7021271980725408,
                                                                                                          translateY: 0,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 3.50299072265625, height: 8.39853286743164, child: Image.asset("assets/pricing_pages/Vector10.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 0.0,
                                                                                                    top: 0.0,
                                                                                                    right: 0.0,
                                                                                                    bottom: 0.0,
                                                                                                    width: null,
                                                                                                    height: null,
                                                                                                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                                                                                      double percentWidth = 0.08511976357627042;
                                                                                                      double scaleX = (constraints.maxWidth * percentWidth) / 3.502958297729492;

                                                                                                      double percentHeight = 0.14583725526952562;
                                                                                                      double scaleY = (constraints.maxHeight * percentHeight) / 8.398676872253418;

                                                                                                      return Stack(children: [
                                                                                                        TransformHelper.translateAndScale(
                                                                                                          translateX: constraints.maxWidth * 0.23405127488763533,
                                                                                                          translateY: constraints.maxHeight * 0.0000101681744860511,
                                                                                                          translateZ: 0,
                                                                                                          scaleX: scaleX,
                                                                                                          scaleY: scaleY,
                                                                                                          scaleZ: 1,
                                                                                                          child: Container(width: 3.502958297729492, height: 8.398676872253418, child: Image.asset("assets/pricing_pages/Vector9.png")),
                                                                                                        )
                                                                                                      ]);
                                                                                                    }),
                                                                                                  )
                                                                                                ]),
                                                                                              ),
                                                                                            ))
                                                                                      ]);
                                                                                    }),
                                                                                  )
                                                                                ]),
                                                                              ),
                                                                            ))
                                                                      ]);
                                                                }),
                                                              )
                                                            ]),
                                                      ),
                                                    ))
                                              ]);
                                            }),
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 772.8482055664062,
                              right: null,
                              bottom: null,
                              width: 40.95875549316406,
                              height: 57.58929443359375,
                              child: TransformHelper.translate(
                                x: -79.05,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 40.95875549316406,
                                  height: 57.58929443359375,
                                  child: Stack(
                                      fit: StackFit.expand,
                                      alignment: Alignment.center,
                                      overflow: Overflow.visible,
                                      children: [
                                        Positioned(
                                          left: null,
                                          top: 31.4190673828125,
                                          right: null,
                                          bottom: null,
                                          width: 13.588973999023438,
                                          height: 18.4920654296875,
                                          child: TransformHelper.translate(
                                            x: 1.58,
                                            y: 0.00,
                                            z: 0,
                                            child: Container(
                                              width: 13.588973999023438,
                                              height: 18.4920654296875,
                                              child: Image.asset(
                                                  "assets/pricing_pages/Vector8.png"),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: null,
                                          top: 26.04443359375,
                                          right: null,
                                          bottom: null,
                                          width: 14.429534912109375,
                                          height: 19.77178955078125,
                                          child: TransformHelper.translate(
                                            x: -1.69,
                                            y: 0.00,
                                            z: 0,
                                            child: Container(
                                              width: 14.429534912109375,
                                              height: 19.77178955078125,
                                              child: Image.asset(
                                                  "assets/pricing_pages/Vector7.png"),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: null,
                                          top: 0.0,
                                          right: null,
                                          bottom: null,
                                          width: 40.95875549316406,
                                          height: 57.58929443359375,
                                          child: Container(
                                            width: 40.95875549316406,
                                            height: 57.58929443359375,
                                            child: Image.asset(
                                                "assets/pricing_pages/Vector6.png"),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 686.4642944335938,
                              right: null,
                              bottom: null,
                              width: 42.02899169921875,
                              height: 57.58929443359375,
                              child: TransformHelper.translate(
                                x: -78.51,
                                y: 0.00,
                                z: 0,
                                child: Container(
                                  width: 42.02899169921875,
                                  height: 57.58929443359375,
                                  child: Stack(
                                      fit: StackFit.expand,
                                      alignment: Alignment.center,
                                      overflow: Overflow.visible,
                                      children: [
                                        Positioned(
                                          left: null,
                                          top: 0.0,
                                          right: null,
                                          bottom: null,
                                          width: 42.02899169921875,
                                          height: 57.58929443359375,
                                          child: Container(
                                            width: 42.02899169921875,
                                            height: 57.58929443359375,
                                            child: Stack(
                                                fit: StackFit.expand,
                                                alignment: Alignment.center,
                                                overflow: Overflow.visible,
                                                children: [
                                                  Positioned(
                                                    left: null,
                                                    top: 29.9464111328125,
                                                    right: null,
                                                    bottom: null,
                                                    width: 42.02899169921875,
                                                    height: 27.64288330078125,
                                                    child: Container(
                                                      width: 42.02899169921875,
                                                      height: 27.64288330078125,
                                                      child: Image.asset(
                                                          "assets/pricing_pages/Vector5.png"),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: null,
                                                    top: 12.66961669921875,
                                                    right: null,
                                                    bottom: null,
                                                    width: 13.449211120605469,
                                                    height: 18.4285888671875,
                                                    child: TransformHelper
                                                        .translate(
                                                      x: -13.45,
                                                      y: 0.00,
                                                      z: 0,
                                                      child: Container(
                                                        width:
                                                            13.449211120605469,
                                                        height:
                                                            18.4285888671875,
                                                        child: Image.asset(
                                                            "assets/pricing_pages/Vector4.png"),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: null,
                                                    top: 12.66961669921875,
                                                    right: null,
                                                    bottom: null,
                                                    width: 13.44921875,
                                                    height: 18.4285888671875,
                                                    child: TransformHelper
                                                        .translate(
                                                      x: 13.45,
                                                      y: 0.00,
                                                      z: 0,
                                                      child: Container(
                                                        width: 13.44921875,
                                                        height:
                                                            18.4285888671875,
                                                        child: Image.asset(
                                                            "assets/pricing_pages/Vector3.png"),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: null,
                                                    top: 0.0,
                                                    right: null,
                                                    bottom: null,
                                                    width: 8.405807495117188,
                                                    height: 11.517822265625,
                                                    child: Container(
                                                        width:
                                                            8.405807495117188,
                                                        height: 11.517822265625,
                                                        child: Image.asset(
                                                            "assets/pricing_pages/Vector2.png")),
                                                  ),
                                                  Positioned(
                                                    left: null,
                                                    top: 12.66961669921875,
                                                    right: null,
                                                    bottom: null,
                                                    width: 11.768119812011719,
                                                    height: 16.125,
                                                    child: TransformHelper
                                                        .translate(
                                                      x: 0.00,
                                                      y: 0.00,
                                                      z: 0,
                                                      child: Container(
                                                        width:
                                                            11.768119812011719,
                                                        height: 16.125,
                                                        child: Image.asset(
                                                            "assets/pricing_pages/Vector1.png"),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 951.375,
                              right: null,
                              bottom: null,
                              width: 150.78262329101562,
                              height: 49.22320556640625,
                              child: TransformHelper.translate(
                                x: -2.41,
                                y: 0.00,
                                z: 0,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '''You receive: \$25 towards Leaderboard \$25 towards Hunt Credits''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      height: 1.171875,
                                      fontSize: 11.0,
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 867.2946166992188,
                              right: null,
                              bottom: null,
                              width: 210.14492797851562,
                              height: 57.58929443359375,
                              child: TransformHelper.translate(
                                x: -1.18,
                                y: 0.00,
                                z: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: ClipRRect(
                                      child: Container(
                                        width: 210.14492797851562,
                                        height: 57.58929443359375,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            color:
                                                Color.fromARGB(255, 0, 201, 91),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: null,
                              top: 878.8125,
                              right: null,
                              bottom: null,
                              width: 153.30433654785156,
                              height: 37.70538330078125,
                              child: TransformHelper.translate(
                                x: 1.50,
                                y: 0.00,
                                z: 0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Text(
                                          '''GET STARTED''',
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 18.0,
                                            fontFamily: 'Work Sans',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ))
              ])),
        );
      }),
    ));
  }
}
