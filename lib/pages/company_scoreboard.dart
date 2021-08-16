import 'package:flutter/material.dart';
import 'package:bugheist/util/transform.dart';

class CompanyScoreboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            height: 899.0,
            child: Stack(children: [
              Container(
                  width: constraints.maxWidth,
                  child: Container(
                    width: 358.0,
                    height: 899.0,
                    child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.zero,
                            child: Container(
                              color: Color.fromARGB(255, 255, 248, 248),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            right: 0.0,
                            bottom: null,
                            width: null,
                            height: 899.0,
                            child: Container(
                              width: 358.0,
                              height: 899.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        "assets/images/1560c904325898904a885bbc07fadb311b0f2203.png",
                                        color: null,
                                        fit: BoxFit.cover,
                                        width: 358.0,
                                        height: 899.0,
                                        colorBlendMode: BlendMode.dstATop,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 95.5,
                            right: null,
                            bottom: null,
                            width: 1.0,
                            height: 33.5,
                            child: TransformHelper.translate(
                              x: -152.17,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 1.0,
                                height: 33.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 96.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 34.0,
                            child: Container(
                              width: 304.0,
                              height: 34.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Container(
                                  color: Color.fromARGB(255, 248, 14, 14),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 95.5,
                            right: null,
                            bottom: null,
                            width: 1.0,
                            height: 33.5,
                            child: TransformHelper.translate(
                              x: -32.39,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 1.0,
                                height: 33.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 129.0,
                            right: null,
                            bottom: null,
                            width: 118.78125,
                            height: 2.0,
                            child: TransformHelper.translate(
                              x: -92.28,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 118.78125,
                                height: 2.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 96.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 34.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 34.0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 95.5,
                            right: null,
                            bottom: null,
                            width: 1.0,
                            height: 33.5,
                            child: TransformHelper.translate(
                              x: -33.39,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 1.0,
                                height: 33.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 129.0,
                            right: null,
                            bottom: null,
                            width: 185.53125,
                            height: 2.0,
                            child: TransformHelper.translate(
                              x: 59.88,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 185.53125,
                                height: 2.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 96.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 34.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 34.0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 129.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: Container(
                              width: 304.0,
                              height: 92.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Container(
                                  color: Color.fromARGB(255, 245, 240, 240),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 215.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 293.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 379.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 476.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 551.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 637.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: Container(
                              width: 304.0,
                              height: 92.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.zero,
                                child: Container(
                                  color: Color.fromARGB(255, 245, 240, 240),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 713.0,
                            right: null,
                            bottom: null,
                            width: 304.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 2.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 304.0,
                                height: 92.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: Container(
                                    color: Color.fromARGB(255, 245, 240, 240),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 129.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 92.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 135.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
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
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 129.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 92.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 92.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 221.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 255.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 12.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 12.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/cebdfc3168695ee9c9de37b8dc7d1f809987d71f.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 80.0,
                                          height: 12.0,
                                          colorBlendMode: BlendMode.dstATop,
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
                            top: 221.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 301.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 311.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 60.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 60.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/c4504152e5d28eda57116899e9b6aedeb2011302.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 80.0,
                                          height: 60.0,
                                          colorBlendMode: BlendMode.dstATop,
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
                            top: 301.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
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
                            width: 119.0,
                            height: 91.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 91.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 386.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/fbb06bf30ea899c042c4def5ba8d3a198dcc25e1.png",
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
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 381.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 91.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 91.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 472.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 491.0,
                            right: null,
                            bottom: null,
                            width: 75.0,
                            height: 41.0,
                            child: TransformHelper.translate(
                              x: -108.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 75.0,
                                height: 41.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/c9b0208a29247d0edc6c11fa6008131a71fd1a2d.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 75.0,
                                          height: 41.0,
                                          colorBlendMode: BlendMode.dstATop,
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
                            top: 472.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 552.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 91.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 91.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 557.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/5b7ab651d3b1c49267d73bf04c5966e354c28d66.png",
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
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 552.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 91.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 91.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 643.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 662.0,
                            right: null,
                            bottom: null,
                            width: 75.0,
                            height: 41.0,
                            child: TransformHelper.translate(
                              x: -108.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 75.0,
                                height: 41.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/c9b0208a29247d0edc6c11fa6008131a71fd1a2d.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 75.0,
                                          height: 41.0,
                                          colorBlendMode: BlendMode.dstATop,
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
                            top: 643.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 723.0,
                            right: null,
                            bottom: null,
                            width: 119.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: -92.50,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 119.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 747.0,
                            right: null,
                            bottom: null,
                            width: 80.0,
                            height: 32.0,
                            child: TransformHelper.translate(
                              x: -92.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 80.0,
                                height: 32.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.zero,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          "assets/images/840098488a32bae33988a3a906055247daf87aa2.png",
                                          color: null,
                                          fit: BoxFit.cover,
                                          width: 80.0,
                                          height: 32.0,
                                          colorBlendMode: BlendMode.dstATop,
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
                            top: 723.0,
                            right: null,
                            bottom: null,
                            width: 186.0,
                            height: 80.0,
                            child: TransformHelper.translate(
                              x: 60.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 186.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 101.0,
                            right: null,
                            bottom: null,
                            width: 76.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: -90.00,
                              y: 0.00,
                              z: 0,
                              child: Text(
                                '''Company''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.523806635538737,
                                  fontSize: 15.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 101.0,
                            right: null,
                            bottom: null,
                            width: 122.0,
                            height: 25.0,
                            child: TransformHelper.translate(
                              x: 61.00,
                              y: 0.00,
                              z: 0,
                              child: Text(
                                '''Company Name''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.523806635538737,
                                  fontSize: 15.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 164.0,
                            right: null,
                            bottom: null,
                            width: 58.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Google''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.428568720817566,
                                        fontSize: 16.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 249.0,
                            right: null,
                            bottom: null,
                            width: 40.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 63.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Com''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.428568720817566,
                                        fontSize: 16.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 329.0,
                            right: null,
                            bottom: null,
                            width: 31.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.50,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Ubi''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.428568720817566,
                                        fontSize: 16.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 415.0,
                            right: null,
                            bottom: null,
                            width: 70.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Bugheist''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.523806635538737,
                                        fontSize: 15.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 500.0,
                            right: null,
                            bottom: null,
                            width: 59.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.50,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Basflex''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.428568720817566,
                                        fontSize: 16.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 586.0,
                            right: null,
                            bottom: null,
                            width: 24.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Or''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.523806635538737,
                                        fontSize: 15.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 671.0,
                            right: null,
                            bottom: null,
                            width: 70.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 63.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Corepon''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.428568720817566,
                                        fontSize: 16.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 751.0,
                            right: null,
                            bottom: null,
                            width: 50.0,
                            height: 28.0,
                            child: TransformHelper.translate(
                              x: 62.00,
                              y: 0.00,
                              z: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: ClipRRect(
                                    child: Text(
                                      '''Neftel''',
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.523806635538737,
                                        fontSize: 15.0,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 51, 51, 51),

                                        /* letterSpacing: 0.0, */
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 28.0,
                            right: null,
                            bottom: null,
                            width: 262.0,
                            height: 35.0,
                            child: TransformHelper.translate(
                              x: -11.00,
                              y: 0.00,
                              z: 0,
                              child: Container(
                                width: 262.0,
                                height: 35.0,
                                child: Image.asset(
                                  "assets/company_scoreboard/vector.png",
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 32.0,
                            right: null,
                            bottom: null,
                            width: 234.0,
                            height: 25.0,
                            child: TransformHelper.translate(
                              x: -13.00,
                              y: 0.00,
                              z: 0,
                              child: Text(
                                '''Company Scoreboard''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.2698388629489474,
                                  fontSize: 18.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 167, 95, 95),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 845.0,
                            right: null,
                            bottom: null,
                            width: 57.0,
                            height: 34.0,
                            child: TransformHelper.translate(
                              x: 53.50,
                              y: 0.00,
                              z: 0,
                              child: GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, '/CompanyScoreboardWidget'),
                                child: Container(
                                  width: 57.0,
                                  height: 34.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color.fromARGB(255, 204, 204, 204),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 245, 240, 240),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 852.0,
                            right: null,
                            bottom: null,
                            width: 82.0,
                            height: 22.0,
                            child: TransformHelper.translate(
                              x: -37.00,
                              y: 0.00,
                              z: 0,
                              child: Text(
                                '''Page 1 of 29''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.4285714285714286,
                                  fontSize: 14.0,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 51, 51, 51),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: null,
                            top: 852.0,
                            right: null,
                            bottom: null,
                            width: 36.0,
                            height: 25.0,
                            child: TransformHelper.translate(
                              x: 56.00,
                              y: 0.00,
                              z: 0,
                              child: GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, '/CompanyScoreboardWidget'),
                                child: Text(
                                  '''Next''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.4285714285714286,
                                    fontSize: 14.0,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 51, 51, 51),

                                    /* letterSpacing: 0.0, */
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ))
            ])),
      );
    }));
  }
}
