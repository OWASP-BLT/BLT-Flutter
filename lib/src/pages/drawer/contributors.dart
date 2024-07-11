import 'package:blt/src/models/contributors_model.dart';
import 'package:blt/src/models/gihub_project_model.dart';
import 'package:blt/src/pages/drawer/drawer_imports.dart';
import 'package:blt/src/util/api/github_apis.dart';

class ContributorsPage extends StatefulWidget {
  const ContributorsPage({super.key});

  @override
  State<ContributorsPage> createState() => _ContributorsPageState();
}

ScrollController _scrollController = new ScrollController();

class _ContributorsPageState extends State<ContributorsPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  List<Project> projects = [
    Project(
      owner: "OWASP-BLT",
      name: "BLT",
      desc:
          "OWASP-BLT BLT is a bug logging tool to report issues and get points, companies are held accountable.",
      logoUrl: "https://avatars.githubusercontent.com/u/160347863?s=48&v=4",
    ),
    Project(
      owner: "OWASP-BLT",
      name: "BLT-FLutter",
      desc: "The official OWASP BLT App repository/ Heist 'em bugs!",
      logoUrl: "",
    ),
    Project(
      owner: "OWASP-BLT",
      name: "BLT-Bacon",
      desc:
          "Bacon is a OWASP BLT Private Chain based on POA consensus that rewards bug testers",
      logoUrl: "",
    )
  ];
  @override
  void initState() {
    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animationController.repeat();
    super.initState();
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
          "Projects",
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
                        "Projects",
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
                        "Check out the list of awesome projects we have. Maybe contribute and become a contributor too?",
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
              ListView.separated(
                shrinkWrap: true,
                itemCount: projects.length,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return PojectsSection(project: projects[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PojectsSection extends StatefulWidget {
  const PojectsSection({super.key, required this.project});
  final Project project;

  @override
  State<PojectsSection> createState() => _PojectsSectionState();
}

class _PojectsSectionState extends State<PojectsSection> {
  late Future _getObj;

  void getContributors() async {
    _getObj = GithubApis.getContributors(
      widget.project.name,
      widget.project.owner,
    );
  }

  CircleAvatar buildAvatar(String partUrl) {
    try {
      if (partUrl == "")
        return CircleAvatar(
          foregroundColor: Colors.transparent,
          radius: 20,
          child: Icon(
            Icons.account_circle_outlined,
            color: Color(0xFFDC4654),
            size: 40,
          ),
        );
      else
        return CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(partUrl),
          radius: 20,
        );
    } on Exception {
      return CircleAvatar(
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.account_circle_outlined,
          color: Colors.white,
          size: 20,
        ),
      );
    }
  }

  @override
  void initState() {
    getContributors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.project.name,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Color(0xFFDC4654),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          widget.project.desc,
          style: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
              color: Color(0xFF737373),
            ),
          ),
          textAlign: TextAlign.justify,
        ),
        Container(
          height: size.height * 0.3,
          child: FutureBuilder(
            future: _getObj,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      AppLocalizations.of(context)!.somethingWentWrong,
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final list = snapshot.data as List<Contributors>;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 20.0,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: ListView.builder(
                        itemCount: (list.length > 3) ? 3 : list.length,
                        itemBuilder: (context, index) {
                          int title = index + 1;
                          return ListTile(
                            onTap: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: index == 0
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(15),
                                    )
                                  : index ==
                                          ((list.length > 3)
                                              ? 2
                                              : list.length - 1)
                                      ? BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )
                                      : BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                        ),
                            ),
                            tileColor: title == 1
                                ? Color(0xFFC9AE5D).withOpacity(0.42)
                                : title == 2
                                    ? Color(0xFFADD8E6).withOpacity(0.42)
                                    : title == 3
                                        ? Color(0xFFFFD700).withOpacity(0.42)
                                        : Colors.white,
                            leading: buildAvatar(list[index].image),
                            title: Text(
                              list[index].name,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Color(0xFFDC4654),
                                ),
                              ),
                              maxLines: 6,
                            ),
                            subtitle: Text(
                              list[index].contributions.toString() +
                                  " contributions",
                              style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  color: Color(0xFF737373),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            trailing: Text(
                              "# " + (index + 1).toString(),
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Color(0xFF737373),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
      ],
    );
  }
}
