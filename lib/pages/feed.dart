import 'package:bugheist/util/widgets.dart';
import 'package:flutter/material.dart';
import 'package:social_embed_webview/platforms/twitter.dart';
import 'package:social_embed_webview/social_embed_webview.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

String tweetContent = AppContent.twitterContent;

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SocialEmbed(
                socialMediaObj: TwitterEmbedData(
                  embedHtml: tweetContent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
