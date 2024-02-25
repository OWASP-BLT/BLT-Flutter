import 'package:blt/src/global/variables.dart';
import 'package:blt/src/pages/home/issues.dart';
import 'package:blt/src/pages/home/leaderboard.dart';
import 'package:blt/src/pages/home/report_bug.dart';
import 'package:blt/src/pages/home/start_hunt.dart';
import 'package:blt/src/providers/authstate_provider.dart';
import 'package:blt/src/providers/login_provider.dart';
import 'package:blt/src/routes/routing.dart';
import 'package:blt/src/util/enums/login_type.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../components/appbar.dart';
import '../../pages/welcome.dart';

/// Navigator and drawer provider for the main pages:
/// Issues, Report Bug, Leaderboards and Feed.
class Home extends ConsumerStatefulWidget {
  final int? startingIndex;
  const Home({
    Key? key,
    this.startingIndex,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late int _selectedIndex;
  late PageController _pageController;
  ReportPageDefaults reportPageDefaults = ReportPageDefaults();

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      },
    );
  }

  String buildLogoutText() {
    LoginType loginState = ref.watch(loginProvider);

    return loginState == LoginType.guest
        ? AppLocalizations.of(context)!.logoutGuest
        : AppLocalizations.of(context)!.logout;
  }

  void startBugHunt(BuildContext context) async {
    LoginType loginState = ref.watch(loginProvider);

    if (loginState == LoginType.guest) {
      await forgetUser();
      await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => WelcomePage(
            snackBarMessage:
                AppLocalizations.of(context)!.onlyLoggedInUsersStartHunt,
          ),
        ),
        (Route route) => false,
      );
      await logout();
    } else {
      _onItemTapped(2);
      Navigator.pop(context);
    }
  }

  Widget buildReferralOption() {
    LoginType loginState = ref.watch(loginProvider);

    return loginState == LoginType.user
        ? ListTile(
            title: Text(AppLocalizations.of(context)!.invite),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushNamed(
                context,
                RouteManager.referralPage,
              );
              // Navigator.pop(context);
            },
          )
        : SizedBox();
  }

  Widget buildLogOUtDialog() {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context)!.youWillBeLoggedOut,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: Color(0xFFDC4654),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () async {
                  await forgetUser();
                  await Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                      (Route route) => false);
                  logout();
                },
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all(Color(0xFFDC4654)),
                ),
                child: Text(
                  AppLocalizations.of(context)!.logout,
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 15,
                    ),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all(Color(0xFF737373)),
                ),
                child: Text(
                  AppLocalizations.of(context)!.cancel,
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 15,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  CachedNetworkImageProvider? buildAvatar() {
    LoginType loginState = ref.watch(loginProvider);

    return loginState != LoginType.guest
        ? (currentUser!.pfpLink != null)
            ? CachedNetworkImageProvider(currentUser!.pfpLink!)
            : null
        : CachedNetworkImageProvider(
            currentUser!.pfpLink!,
          );
  }

  Future<void> logout() async {
    await ref.read(authStateNotifier.notifier).logout();
  }

  Future<void> forgetUser() async {
    await ref.read(authStateNotifier.notifier).forgetUser();
  }

  @override
  void initState() {
    _selectedIndex = widget.startingIndex ?? 0;
    _pageController = PageController(
      initialPage: _selectedIndex,
      keepPage: true,
    );
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ReportPageDefaults defaults = await receiveSharedIntent();
      if (defaults.sharedMediaFile != null || defaults.text != null) {
        setState(() {
          reportPageDefaults = defaults;
          _onItemTapped(1);
        });
      }
    });
  }

  Future<ReportPageDefaults> receiveSharedIntent() async {
    print("getting");
    String? sharedValue = await ReceiveSharingIntent.getInitialText();
    print(sharedValue);
    List<SharedMediaFile> sharedMedia =
        await ReceiveSharingIntent.getInitialMedia();
    return ReportPageDefaults(
      text: sharedValue,
      sharedMediaFile: (sharedMedia.length > 0) ? sharedMedia[0] : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        showGeneralDialog(
          context: context,
          barrierLabel: "Barrier",
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),
          transitionDuration: Duration(milliseconds: 400),
          pageBuilder: (_, __, ___) {
            return buildLogOUtDialog();
          },
        );
      },
      child: Scaffold(
        appBar: buildAppBar(context: context),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFDC4654),
                ),
                accountName: Text(
                  currentUser!.username!,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                accountEmail: Text(
                  "",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: buildAvatar(),
                  child: Text(
                    currentUser!.username!.substring(0, 2),
                    style: TextStyle(fontSize: 40.0),
                  ),
                  foregroundColor: Color(0xFFDC4654),
                ),
              ),
              ListTile(
                title: Text(buildLogoutText()),
                onTap: () async {
                  // Update trhe state of the app
                  // ...
                  // Then close the drawer
                  await forgetUser();
                  await Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                      (Route route) => false);
                  await logout();
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.social),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, RouteManager.socialPage);
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.termsOfService),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteManager.legalPage,
                  );

                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.aboutUs),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteManager.aboutPage,
                  );

                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.companyDashboard),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteManager.companyDashboardPage,
                  );

                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              buildReferralOption(),
              ListTile(
                title: Container(
                  width: double.infinity,
                  height: 50,
                  child: Builder(builder: (context) {
                    return TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.startBugHunt,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFDC4654),
                        ),
                      ),
                      onPressed: () async {
                        startBugHunt(context);
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _selectedIndex = index);
            },
            children: [
              // Feed(),
              IssuesPage(),
              ReportBug(
                reportPageDefaults: reportPageDefaults,
              ),
              StartHuntPage(),
              LeaderBoard(),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home),
            //   label: 'Home',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: AppLocalizations.of(context)!.issues,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bug_report),
              label: AppLocalizations.of(context)!.report,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_searching),
              label: AppLocalizations.of(context)!.bugHunt,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: AppLocalizations.of(context)!.leaderboard,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFFDC4654),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
