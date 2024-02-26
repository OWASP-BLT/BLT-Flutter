import 'package:blt/src/pages/home/home_imports.dart';
import 'package:flutter/material.dart';

/// Report Bug and Start Bug Hunt Page, namesake, used for
/// posting bugs, companies and individuals
/// should be able to start bughunts.
class ReportBug extends ConsumerStatefulWidget {
  final ReportPageDefaults reportPageDefaults;
  const ReportBug({Key? key, required this.reportPageDefaults})
      : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReportBugState();
}

class _ReportBugState extends ConsumerState<ReportBug> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ReportForm(
        parentContext: context,
        reportPageDefaults: widget.reportPageDefaults,
      ),
    );
  }
}

class ReportForm extends ConsumerStatefulWidget {
  final BuildContext parentContext;
  final ReportPageDefaults reportPageDefaults;

  const ReportForm({
    Key? key,
    required this.parentContext,
    required this.reportPageDefaults,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReportFormState();
}

class _ReportFormState extends ConsumerState<ReportForm> {
  final _descriptionController = TextEditingController();
  final _titleController = TextEditingController();
  int _selectedIssueCategoriesIndex = 0;
  ValueNotifier<int> _selectedDescriptionLabelIndex = ValueNotifier(0);
  bool duplicateVerified = false;
  final _formKey = GlobalKey<FormState>();
  List<File> _image = [];
  final picker = ImagePicker();
  List<String> _issueCategories = [
    "General",
    "Number error",
    "Functional",
    "Performance",
    "Security",
    "Typo",
    "Design",
    "Server down"
  ];

  Future<void> _pickImageFromGallery() async {
    final imageFile = await picker.pickMultiImage();
    if (!imageFile.isEmpty) {
      var imgs = _image;
      for (var img in imageFile) {
        if (imgs.length == 5) break;
        imgs.add(File(img.path));
      }
      setState(() {
        _image = imgs;
      });
    }
  }

  // Future<File> _coverToImage(Uint8List imageBytes) async {
  //   String tempPath = (await getTemporaryDirectory()).path;
  //   File file = File('$tempPath/profile.png');
  //   await file.writeAsBytes(imageBytes.buffer
  //       .asUint8List(imageBytes.offsetInBytes, imageBytes.lengthInBytes));
  //   return file;
  // }

  // Future<void> _pasteImageFromClipBoard() async {
  //   try {
  //     final imageBytes = await Pasteboard.image;
  //     late File? image;
  //     if (imageBytes != null) {
  //       image = await _coverToImage(imageBytes);
  //     }
  //     setState(() {
  //       _image = image;
  //     });
  //   } catch (e) {
  //     print('No Image Found On Clipboard');
  //   }
  // }

  void markdownFormatting(String formatter) {
    int start = _descriptionController.selection.baseOffset;
    int end = _descriptionController.selection.extentOffset;
    String text = _descriptionController.text;

    if (end < start) {
      int temp = start;
      start = end;
      end = temp;
    }

    text = text.substring(0, start) +
        formatter +
        text.substring(start, end) +
        formatter +
        text.substring(end);
    _descriptionController.text = text;
    _descriptionController.selection = TextSelection(
        baseOffset: start + formatter.length,
        extentOffset: end + formatter.length);
  }

  void markdownLink() {
    int start = _descriptionController.selection.baseOffset;
    int end = _descriptionController.selection.extentOffset;
    String text = _descriptionController.text;

    if (end < start) {
      int temp = start;
      start = end;
      end = temp;
    }

    text = text.substring(0, start) +
        "[" +
        text.substring(start, end) +
        "]()" +
        text.substring(end);
    _descriptionController.text = text;
    _descriptionController.selection =
        TextSelection(baseOffset: start + 1, extentOffset: end + 1);
  }

  void markdownNewLine(String newLineText) {
    int start = _descriptionController.selection.baseOffset;
    int end = _descriptionController.selection.extentOffset;
    String text = _descriptionController.text;

    if (end < start) {
      int temp = start;
      start = end;
      end = temp;
    }

    text = text.substring(0, start) +
        "\n" +
        newLineText +
        text.substring(start, end) +
        "\n" +
        text.substring(end);
    _descriptionController.text = text;
    _descriptionController.selection = TextSelection(
        baseOffset: start + newLineText.length + 1,
        extentOffset: end + newLineText.length + 1);
  }

  void showIssueCategories(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    onTap: () {
                      setState(() {
                        _selectedIssueCategoriesIndex = index;
                      });
                      Navigator.of(context).pop();
                    },
                    title: Text(
                      _issueCategories[index],
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ));
  }

  void showDuplicateDialog(BuildContext context) {
    if (_titleController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.urlFieldIsRequired),
        ),
      );
      return;
    }
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return FutureBuilder<Map<String, String>?>(
          future: GeneralApiClient.checkForDuplicate(_titleController.text),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, String>? m = snapshot.data;

              duplicateVerified = true;
              if (m == null) {
                return AlertDialog(
                  title: Text(
                    AppLocalizations.of(context)!.sweet,
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: Color(0xFFDC4654),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  content: Text(
                    AppLocalizations.of(context)!.noBugFromURL,
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                        color: Color(0xFF737373),
                      ),
                    ),
                  ),
                );
              } else {
                return AlertDialog(
                  title: Text(
                    AppLocalizations.of(context)!.bugWithURLExists,
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: Color(0xFFDC4654),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                              color: Color(0xFF737373),
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: AppLocalizations.of(context)!.description,
                              style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  color: Color(0xFF737373),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextSpan(text: m["description"])
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                              color: Color(0xFF737373),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: AppLocalizations.of(context)!
                                  .ensureNotSubmittingDuplicate,
                            ),
                            TextSpan(
                              text:
                                  "${GeneralEndPoints.domain}issue/${m["id"]}",
                              style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  color: Color(0xFF4A93F8),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Uri site = Uri.parse(
                                      "${GeneralEndPoints.baseUrl}issue/${m["id"]}");
                                  try {
                                    await launchUrl(site,
                                        mode: LaunchMode.externalApplication);
                                  } catch (e) {}
                                },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.reportPageDefaults.sharedMediaFile != null) {
      _image = [File(widget.reportPageDefaults.sharedMediaFile!.path)];
    }
    if (widget.reportPageDefaults.text != null) {
      _titleController.text = widget.reportPageDefaults.text!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.reportIssue,
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Color(0xFFDC4654),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _titleController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.requiredField;
                      }
                      return null;
                    },
                    onChanged: (v) {
                      if (duplicateVerified) {
                        setState(() {
                          duplicateVerified = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.appNameOrURL,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                    ),
                    cursorColor: Color(0xFFDC4654),
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              _issueCategories[_selectedIssueCategoriesIndex],
                              style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 27.0,
                              width: 27.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: Color(0xFFDC4654),
                              ),
                              child: Center(
                                child: Builder(builder: (context) {
                                  return IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      showIssueCategories(context);
                                    },
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(
                              width: 6.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: Builder(builder: (context) {
                          return TextButton(
                            child: Text(
                              AppLocalizations.of(context)!.checkForDuplicates,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                duplicateVerified
                                    ? Color(0xFF50C878)
                                    : Color(0xFFDC4654),
                              ),
                            ),
                            onPressed: () async {
                              showDuplicateDialog(context);
                              setState(() {
                                duplicateVerified = true;
                              });
                            },
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 225.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: ValueListenableBuilder(
                            valueListenable: _selectedDescriptionLabelIndex,
                            builder: (context, value, widget) {
                              if (value == 0) {
                                return TextFormField(
                                  controller: _descriptionController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return AppLocalizations.of(context)!
                                          .requiredField;
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    hintText: AppLocalizations.of(context)!
                                        .descriptio,
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  cursorColor: Color(0xFFDC4654),
                                );
                              }
                              return Container(
                                child: Markdown(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  data: _descriptionController.text,
                                  styleSheet: MarkdownStyleSheet.fromTheme(
                                    ThemeData(
                                      fontFamily:
                                          GoogleFonts.aBeeZee().fontFamily,
                                      textTheme: TextTheme(
                                        bodyMedium: GoogleFonts.aBeeZee(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF737373),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 93.0,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownFormatting("**");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_bold.svg",
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownFormatting("*");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_italic.svg",
                                          height: 16.0,
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownFormatting("~~");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_strikethrough.svg",
                                          height: 17.0,
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownLink();
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_link.svg",
                                          height: 15.0,
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownNewLine("- ");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_list.svg",
                                          height: 15.0,
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownNewLine("- [ ] ");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_task.svg",
                                          height: 15.0,
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          markdownNewLine("# ");
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/input_heading.svg",
                                          height: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 350,
                              height: 40,
                              child: TextButton(
                                child: Center(
                                  child: Text(
                                    _selectedDescriptionLabelIndex.value == 1
                                        ? AppLocalizations.of(context)!.edit
                                        : AppLocalizations.of(context)!.preview,
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFDC4654),
                                  ),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    _selectedDescriptionLabelIndex.value = 1 -
                                        _selectedDescriptionLabelIndex.value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    height: 125.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: min(5, _image.length + 1),
                      itemBuilder: (_, i) {
                        if (i < _image.length) {
                          return Container(
                            width: 125.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.file(
                                      _image[i],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color: Color(0xFFDC4654),
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          setState(() {
                                            _image.removeAt(i);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return SizedBox(
                            width: 125.0,
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: InkWell(
                                onTap: () {
                                  _pickImageFromGallery();
                                },
                                child: Ink(
                                  child: Container(
                                    height: 280.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                      color: Color(0xFFF8D2CD),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Spacer(),
                                          SvgPicture.asset(
                                            "assets/select_image.svg",
                                            width: 45.0,
                                          ),
                                          SizedBox(
                                            height: 16.0,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .addImages,
                                            style: GoogleFonts.ubuntu(
                                              textStyle: TextStyle(
                                                color: Color(0xFFDC4654),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Text(
              AppLocalizations.of(context)!.noteAddingIssueGivesPoints,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                  color: Color(0xFF737373),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: Text(
                AppLocalizations.of(context)!.addIssue,
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFFDC4654),
                ),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (_image.isNotEmpty) {
                    Issue issue = Issue(
                      user: currentUser!,
                      url: _titleController.text,
                      title: _titleController.text,
                      description: _descriptionController.text,
                      isVerified: false,
                      isOpen: true,
                      screenshotsLink: _image.map((e) => e.path).toList(),
                      userAgent:
                          "Dart ${Platform.version.substring(0, 7) + Platform.operatingSystem}",
                      label: _selectedIssueCategoriesIndex,
                    );
                    await IssueApiClient.postIssue(issue, widget.parentContext);
                  } else {
                    SnackBar cantSnak = SnackBar(
                      content: Text(
                          AppLocalizations.of(context)!.needToUploadScreenshot),
                    );
                    ScaffoldMessenger.of(widget.parentContext).showSnackBar(
                      cantSnak,
                    );
                  }
                }
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class ReportPageDefaults {
  final SharedMediaFile? sharedMediaFile;
  final String? text;

  ReportPageDefaults({this.sharedMediaFile, this.text});
}
