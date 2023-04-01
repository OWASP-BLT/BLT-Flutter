import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/issue_model.dart';
import '../../components/issuechip.dart';
import '../../components/issueflag.dart';
import '../../components/issuelike.dart';
import '../../util/endpoints/general_endpoints.dart';

/// Popup page when an issue is clicked to be viewed.
class IssueDetailPage extends StatelessWidget {
  static final String path = "lib/src/pages/blog/article1.dart";
  final Issue issue;

  const IssueDetailPage({
    Key? key,
    required this.issue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    List<TextSpan> textSpans = [];
    List<String> parts = issue.description.split("#");
    textSpans.add(TextSpan(text: parts[0]));
    for (int i = 1; i < parts.length; i++) {
      String spacedPart = parts[i].split(" ")[0];
      bool isId = true;
      if (spacedPart.isEmpty) isId = false;
      if (!RegExp(r'^[0-9]+$').hasMatch(spacedPart)) isId = false;
      if (isId) {
        textSpans.add(
          TextSpan(
            text: "#$spacedPart",
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                color: Color(0xFF4A93F8),
                decoration: TextDecoration.underline,
              ),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                Uri site =
                    Uri.parse("${GeneralEndPoints.baseUrl}issue/$spacedPart");
                try {
                  await launchUrl(site, mode: LaunchMode.externalApplication);
                } catch (e) {}
              },
          ),
        );
        textSpans.add(TextSpan(text: parts[i].substring(spacedPart.length)));
      } else {
        textSpans.add(TextSpan(text: "#${parts[0]}"));
      }
    }

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
        title: Text("Issue #${issue.id}"),
        actions: [
          IssueLikeButton(
            issue: issue,
            color: Colors.white,
          ),
          IssueFlagButton(
            issue: issue,
            color: Colors.white,
          ),
        ],
        backgroundColor: Color(0xFFDC4654),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: size.width,
              color: Theme.of(context).canvasColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Issue #${issue.id}",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Color(0xFF737373),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Created On ${issue.created_date}",
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA3A3A3),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IssueStatusChip(issue: issue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.network(
                issue.screenshotsLink![0],
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Description",
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Color(0xFFDC4654),
                    fontSize: 17.5,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Color(0xFF737373),
                    ),
                  ),
                  children: textSpans,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
