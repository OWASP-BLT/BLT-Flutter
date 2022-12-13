import 'package:bugheist/src/providers/authstate_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/routing.dart';

/// The Landing page for unauthenticated users, or if a
/// user wants to try the guest mode of the app.
class WelcomePage extends ConsumerStatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends ConsumerState<WelcomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool isRemembered = await ref.read(authStateNotifier.notifier).loadUserIfRemembered();
      if (isRemembered) {
          Navigator.of(context).pushNamed(
            RouteManager.homePage,
          );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Color(0xFFDC4654),
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height * 0.4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.15 * size.width,
                      vertical: 0.1 * size.height,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/logo_white.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.6,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 50,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 0.8 * size.width,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            RouteManager.loginPage,
                          );
                        },
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Login",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(12),
                          shadowColor: MaterialStateProperty.all(
                            Colors.black.withOpacity(0.5),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFDC4654),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.025 * size.height,
                    ),
                    SizedBox(
                      height: 60,
                      width: 0.8 * size.width,
                      child: Consumer(
                        builder: (BuildContext context, ref, Widget? child) {
                          return TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                RouteManager.homePage,
                              );
                              ref.read(authStateNotifier.notifier).guestLogin();
                            },
                            child: Text(
                              "Explore Anonymously",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Color(0xFF737373),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(12),
                              shadowColor: MaterialStateProperty.all(
                                Colors.black.withOpacity(0.5),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: Color(0xFF737373),
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).canvasColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New User?",
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RouteManager.signupPage,
                            );
                          },
                          child: Text("Sign Up"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
