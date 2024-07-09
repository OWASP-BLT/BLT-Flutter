import 'package:blt/src/constants/monthname_constants.dart';
import 'package:blt/src/pages/drawer/drawer_imports.dart';
import 'package:blt/src/pages/home/home_imports.dart';
import 'package:blt/src/providers/bug_hunt_provider.dart';

class ShowBugHunts extends ConsumerStatefulWidget {
  const ShowBugHunts({Key? key}) : super(key: key);

  @override
  _ShowBugHuntsState createState() => _ShowBugHuntsState();
}

ScrollController _scrollController = new ScrollController();

class _ShowBugHuntsState extends ConsumerState<ShowBugHunts>
    with TickerProviderStateMixin {
  late AnimationController animationController;
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
    final bugHuntList = ref.watch(bugHuntListProvider);

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
          "Bug Hunts",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(bugHuntListProvider.notifier).refreshBugHuntList();
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                        "Bug Hunts",
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
                        "Check out the list of awesome Bug Hunts going on. Maybe try to participate in them too?",
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
              Container(
                // height: size.height * 0.8,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: bugHuntList!.when(
                  data: (List<BugHunt>? bugHuntsList) {
                    if (bugHuntsList!.isEmpty) {
                      return Center(
                        child: Text(
                          "No Bug Hunts found !!",
                          textAlign: TextAlign.center,
                        ),
                      );
                    } else {
                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: bugHuntsList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final hunt = bugHuntsList[index];
                          // if (widget.isTest != null && widget.isTest == true) {
                          //   return ListTile(
                          //     title: Text(company.companyName),
                          //     subtitle: Text('${company.lastModified}'),
                          //   );
                          // }
                          return Card(
                            elevation: 0,
                            clipBehavior: Clip.antiAlias,
                            color: Color(0xFF737373).withOpacity(0.15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(
                                //   context,
                                //   RouteManager.issueDetailPage,
                                //   arguments: issue,
                                // );
                              },
                              child: Container(
                                height: 0.205 * size.height,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                GeneralEndPoints.apiBaseUrl +
                                                    "media/" +
                                                    hunt.logo!,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                            bottom: 5.0,
                                            left: 12.0,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                hunt.name,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                style: GoogleFonts.ubuntu(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFDC4654),
                                                    fontSize: 18,
                                                  ),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.calendar_month,
                                                    color: Color.fromARGB(
                                                        255, 70, 70, 70),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Starts on : ${monthsInYear[hunt.startsOn?.month]} ${hunt.startsOn?.day} ${hunt.startsOn?.year}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    style: GoogleFonts.aBeeZee(
                                                      textStyle: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFF737373),
                                                      ),
                                                    ),
                                                  ),
                                                  // Text('${hunt.startsOn}'),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.006),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.calendar_month,
                                                    color: Color.fromARGB(
                                                        255, 70, 70, 70),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Ends on : ${monthsInYear[hunt.endsOn?.month]} ${hunt.endsOn?.day} ${hunt.endsOn?.year}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    style: GoogleFonts.aBeeZee(
                                                      textStyle: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFF737373),
                                                      ),
                                                    ),
                                                  ),
                                                  // Text('${hunt.startsOn}'),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.003),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.link_outlined,
                                                    color: Color.fromARGB(
                                                        255, 70, 70, 70),
                                                  ),
                                                  SizedBox(width: 5),
                                                  GestureDetector(
                                                    onTap: () {
                                                      launchUrl(
                                                          Uri.parse(hunt.url));
                                                    },
                                                    child: Text(
                                                      '${hunt.url}',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      softWrap: true,
                                                      style:
                                                          GoogleFonts.aBeeZee(
                                                        textStyle: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Colors.blue[500],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Text('${hunt.startsOn}'),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.003),
                                              Row(
                                                children: [
                                                  Text(
                                                    ' \$ ',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    style: GoogleFonts.aBeeZee(
                                                      textStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromARGB(
                                                            255, 70, 70, 70),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '${hunt.prize}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    style: GoogleFonts.aBeeZee(
                                                      textStyle: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFF737373),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                          // return ListTile(
                          //   title: Text('${hunt.name}'),
                          //   subtitle: Text("${hunt.url}"),
                          // );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 10);
                        },
                      );
                    }
                  },
                  error: (Object error, StackTrace? stackTrace) {
                    return Center(
                      child: Text(
                        AppLocalizations.of(context)!.somethingWentWrong,
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  },
                  loading: () {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: animationController.drive(
                          ColorTween(
                            begin: Colors.blueAccent,
                            end: Colors.red,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
