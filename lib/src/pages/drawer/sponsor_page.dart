import 'package:blt/src/pages/drawer/drawer_imports.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatefulWidget {
  const SponsorPage({super.key});

  @override
  State<SponsorPage> createState() => _SponsorPageState();
}

class _SponsorPageState extends State<SponsorPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  int selected = -1;
  final List<dynamic> tiers = [
    {
      "title": "Ant Tier",
      "svg": "assets/ant.svg",
      "subtitle": "\$20 or more",
    },
    {
      "title": "Flea Tier",
      "svg": "assets/flea.svg",
      "subtitle": "\$50 or more",
    },
    {
      "title": "Scorpion Tier",
      "svg": "assets/scorpion.svg",
      "subtitle": "\$100 or more",
    },
    {
      "title": "Wasp Tier",
      "svg": "assets/wasp.svg",
      "subtitle": "\$200 or more",
    }
  ];

  @override
  void initState() {
    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: isDarkMode
          ? Color.fromRGBO(34, 22, 23, 1)
          : Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor:
            isDarkMode ? Color.fromRGBO(58, 21, 31, 1) : Color(0xFFDC4654),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Sponsor BLT",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Text(
                  "Sponsor BLT",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Color(0xFF737373),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Text(
                  "Join us in driving innovation and excellence in the tech community. Your sponsorship helps fuel groundbreaking projects, ensuring we continue to develop and share cutting-edge solutions with the world.",
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Color(0xFF737373),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (selected == index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = -1;
                        });
                      },
                      child: SelectedSponsorTile(sponsor: tiers[index]),
                    );
                  }
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: UnselectedSponsorTile(sponsor: tiers[index]),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: tiers.length,
              ),
              SizedBox(height: 30),
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.volunteer_activism,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sponsor",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    isDarkMode
                        ? Color.fromRGBO(126, 33, 58, 1)
                        : Color(0xFFDC4654),
                  ),
                ),
                onPressed: () async {},
              ),
              // Container(
              // height: size.height * 0.8,
              // padding: EdgeInsets.symmetric(horizontal: 20),
              // child: issueState!.when(
              //   data: (List<Company>? companyList) {
              //     if (companyList!.isEmpty) {
              //       return Center(
              //         child: Text(
              //           "No companies found !!",
              //           textAlign: TextAlign.center,
              //         ),
              //       );
              //     } else {
              //       return ListView.separated(
              //         controller: _scrollController,
              //         itemCount: companyList.length,
              //         shrinkWrap: true,
              //         physics: NeverScrollableScrollPhysics(),
              //         itemBuilder: (context, index) {
              //           final company = companyList[index];
              //           return CompanyListElement(
              //             company: company,
              //           );
              //         },
              //         separatorBuilder: (BuildContext context, int index) {
              //           return SizedBox(height: 10);
              //         },
              //       );
              //     }
              //   },
              //   error: (Object error, StackTrace? stackTrace) {
              //     return Center(
              //       child: Text(
              //         AppLocalizations.of(context)!.somethingWentWrong,
              //         style: TextStyle(fontSize: 18),
              //       ),
              //     );
              //   },
              //   loading: () {
              //     return Center(
              //       child: CircularProgressIndicator(
              //         valueColor: animationController.drive(
              //           ColorTween(
              //             begin: Colors.blueAccent,
              //             end: Colors.red,
              //           ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnselectedSponsorTile extends StatelessWidget {
  const UnselectedSponsorTile({super.key, this.sponsor});
  final dynamic sponsor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1.5,
          color: isDarkMode ? Color.fromRGBO(73, 40, 49, 1) : Color(0xFFDC4654),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: size.width * 0.4,
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.12,
                height: size.width * 0.12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SvgPicture.asset(
                    sponsor["svg"],
                    color:
                        isDarkMode ? Color.fromARGB(255, 212, 212, 212) : null,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sponsor["title"],
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: isDarkMode
                            ? Color.fromARGB(255, 161, 161, 161)
                            : Color.fromARGB(255, 88, 88, 88),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Text(
                    sponsor["subtitle"],
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: !isDarkMode
                            ? Color.fromARGB(255, 161, 161, 161)
                            : Color.fromARGB(255, 98, 98, 98),
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedSponsorTile extends StatelessWidget {
  const SelectedSponsorTile({super.key, this.sponsor});
  final dynamic sponsor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        // color: Colors.white,
        color: isDarkMode ? Color.fromRGBO(58, 21, 31, 1) : Color(0xFFDC4654),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.5,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.12,
                    height: size.width * 0.12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SvgPicture.asset(
                        sponsor["svg"],
                        color: isDarkMode ? Colors.white : null,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sponsor["title"],
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            // color: !isDarkMode
                            //     ? Color.fromARGB(255, 161, 161, 161)
                            //     : Color(0xFF737373),
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Text(
                        sponsor["subtitle"],
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: const Color.fromARGB(255, 233, 232, 232),
                            // color: !isDarkMode
                            //     ? Color.fromARGB(255, 161, 161, 161)
                            //     : Color(0xFF737373),
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.verified,
              color: isDarkMode
                  ? Color.fromARGB(255, 161, 161, 161)
                  : Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
