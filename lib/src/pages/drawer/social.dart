import 'package:flutter/material.dart';
//import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/socialurls_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SocialPage extends ConsumerStatefulWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends ConsumerState<SocialPage> {
//late InAppWebViewController webViewController;
//late PullToRefreshController refreshController;

  Future<void> redirectSocial(String? socialUrl) async {
    Uri url = Uri.parse(socialUrl!);
    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(AppLocalizations.of(context)!.social),
          backgroundColor: Color(0xFFDC4654),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.joinUsOn,
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFDC4654),
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          redirectSocial(socialUrls["twitter"]);
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFDC4654),
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.twitter,
                                  color: Colors.white),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Twitter",
                                style: GoogleFonts.aBeeZee(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    redirectSocial(socialUrls["slack"]);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFDC4654),
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.slack, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Slack",
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    redirectSocial(socialUrls["github"]);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFDC4654),
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.github, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "GitHub",
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

//             Expanded(
//               child: InAppWebView(
//                 initialOptions: InAppWebViewGroupOptions(
//                   crossPlatform: InAppWebViewOptions(
//                     useShouldOverrideUrlLoading: true,
//                   ),
//                 ),
//                 initialData: InAppWebViewInitialData(data: """
//                   <!DOCTYPE html>
// <html lang="en">
// <head>
//     <meta charset="UTF-8">
//     <meta http-equiv="X-UA-Compatible" content="IE=edge">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <title>Document</title>
// </head>
// <body>
//     <div>
//         <a class="twitter-timeline" href="https://twitter.com/owasp?ref_src=twsrc%5Etfw" style="text-decoration:none;color:0xFF737373;">Loading Tweets ...</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
//     </div>
// </body>
// </html>
// """),
//                 shouldOverrideUrlLoading: (controller, navigationAction) async {
//                   return NavigationActionPolicy.CANCEL;
//                 },
//               ),
//             ),
          ],
        ));
  }
}
