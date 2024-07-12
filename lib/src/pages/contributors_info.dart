import 'package:blt/src/models/contributors_model.dart';
import 'package:blt/src/pages/pages_import.dart';
import 'package:blt/src/util/api/github_apis.dart';

class ContributorsInfoPage extends StatefulWidget {
  const ContributorsInfoPage({super.key, required this.contributors});
  final List<Contributors> contributors;

  @override
  State<ContributorsInfoPage> createState() => _ContributorsInfoPageState();
}

class _ContributorsInfoPageState extends State<ContributorsInfoPage> {
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
          "Contributors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                color: isDarkMode
                    ? Color.fromRGBO(34, 22, 23, 1)
                    : Theme.of(context).canvasColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Text(
                        "Contributors",
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
                        "Check out the awesome contributors we have. Maybe contribute and become a contributor too?",
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: Color(0xFF737373),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.008),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: size.width * 0.05,
                  childAspectRatio: size.height * 0.001,
                  mainAxisSpacing: size.height * 0.01,
                ),
                itemCount: widget.contributors.length,
                itemBuilder: (context, index) => Ink(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(new PageRouteBuilder(
                          opaque: false,
                          barrierDismissible: true,
                          pageBuilder: (BuildContext context, _, __) {
                            return ContributorCard(
                                contributor: widget.contributors[index]);
                          }));
                    },
                    child: Ink(
                      child: Column(
                        children: [
                          Hero(
                            tag: "image${widget.contributors[index].name}",
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                widget.contributors[index].image,
                              ),
                              radius: size.height * 0.027,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            widget.contributors[index].name,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFF737373),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContributorCard extends StatefulWidget {
  final Contributors contributor;

  const ContributorCard({Key? key, required this.contributor})
      : super(key: key);

  @override
  State<ContributorCard> createState() => _ContributorCardState();
}

class _ContributorCardState extends State<ContributorCard> {
  Contributors? contributor;
  bool loading = true;
  void getContributorInfo() async {
    setState(() {
      loading = true;
    });
    contributor = await GithubApis.getContributorsInfoFromID(
      widget.contributor.id,
    );
    print(contributor);
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    getContributorInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.2),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                      ),
                    ]),
                height: 480.0,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFDC4654),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          height: 80,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          height: 400,
                        ),
                      ],
                    ),
                    (loading)
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 45.0,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 32.0,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 35.0,
                                    child: Hero(
                                      tag: "image${widget.contributor.name}",
                                      child: CircleAvatar(
                                        radius: 32,
                                        backgroundImage:
                                            CachedNetworkImageProvider(
                                          widget.contributor.image,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Container(
                                    height: 64.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Hero(
                                          tag: "name${widget.contributor.name}",
                                          child: Material(
                                            color: Colors.transparent,
                                            child: Text(
                                              widget.contributor.name,
                                              style: GoogleFonts.aBeeZee(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                ),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              if (contributor?.bio != null &&
                                  contributor?.bio != "") ...[
                                SizedBox(
                                  height: 16.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32.0),
                                  child: Text(
                                    '${contributor?.bio}',
                                    style: GoogleFonts.aBeeZee(
                                      textStyle: TextStyle(
                                        color: Color(0xFF737373),
                                      ),
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                              if (contributor?.location != null &&
                                  contributor?.location != "") ...[
                                SizedBox(
                                  height: 16.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 32.0,
                                    ),
                                    Icon(
                                      Icons.location_pin,
                                      color: Color(0xFF737373),
                                      size: 28.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      '${contributor?.location}',
                                      style: GoogleFonts.aBeeZee(
                                        textStyle: TextStyle(
                                          color: Color(0xFF737373),
                                        ),
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              // Spacer(),
                              // Row(
                              //   children: [
                              //     SizedBox(
                              //       width: 24.0,
                              //     ),
                              //     IconButton(
                              //       onPressed: () async {
                              //         Uri site = Uri.parse(contributor["twitter"]!);
                              //         try {
                              //           await launchUrl(site,
                              //               mode: LaunchMode.externalApplication);
                              //         } catch (e) {}
                              //       },
                              //       icon: SvgPicture.asset(
                              //         "assets/twitter.svg",
                              //         height: 64.0,
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () async {
                              //         Uri site = Uri.parse(contributor["linkedin"]!);
                              //         try {
                              //           await launchUrl(site,
                              //               mode: LaunchMode.externalApplication);
                              //         } catch (e) {}
                              //       },
                              //       icon: SvgPicture.asset(
                              //         "assets/linkedin.svg",
                              //         height: 64.0,
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () async {
                              //         Uri site = Uri.parse(contributor["website"]!);
                              //         try {
                              //           await launchUrl(site,
                              //               mode: LaunchMode.externalApplication);
                              //         } catch (e) {}
                              //       },
                              //       icon: SvgPicture.asset(
                              //         "assets/website.svg",
                              //         height: 64.0,
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () async {
                              //         await Clipboard.setData(ClipboardData(
                              //             text: contributor["bch_addr"]!));
                              //         ScaffoldMessenger.of(context).showSnackBar(
                              //           SnackBar(
                              //             content: Text(
                              //                 "Bitcoin cash address copied to clipboard!"),
                              //           ),
                              //         );
                              //       },
                              //       icon: SvgPicture.asset(
                              //         "assets/bitcoin.svg",
                              //         height: 64.0,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: 32.0,
                              // ),
                            ],
                          ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
