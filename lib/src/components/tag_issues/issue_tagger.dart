import 'package:blt/src/components/tag_issues/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/issue_model.dart';

final _searchViewModel = SearchViewModel();

class IssueTagger extends StatefulWidget {
  const IssueTagger({
    Key? key,
    required this.controller,
    required this.builder,
    required this.issueList,
    this.onCreate,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function(VoidCallback)? onCreate;
  final Widget Function(BuildContext, GlobalKey) builder;
  final List<Issue> issueList;

  @override
  State<IssueTagger> createState() => _IssueTaggerState();
}

class _IssueTaggerState extends State<IssueTagger> {
  TextEditingController get controller => widget.controller;
  late final _containerKey = GlobalKey(
    debugLabel: "TextField Container Key",
  );
  late Offset _offset = Offset.zero;
  late double _width = 0;
  late bool _hideOverlay = true;
  OverlayEntry? _overlayEntry;

  void _computeSize() {
    try {
      final renderBox =
          _containerKey.currentContext!.findRenderObject() as RenderBox;
      _width = renderBox.size.width;
      _offset = renderBox.localToGlobal(Offset.zero);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _shouldHideOverlay(bool val) {
    try {
      if (_hideOverlay == val) return;
      setState(() {
        _hideOverlay = val;
        if (_hideOverlay) {
          _overlayEntry?.remove();
          _overlayEntry = null;
        } else {
          _computeSize();
          _overlayEntry = _createOverlay();
          Overlay.of(context)!.insert(_overlayEntry!);
        }
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  OverlayEntry _createOverlay() {
    return OverlayEntry(
      builder: (_) => Positioned(
        left: _offset.dx,
        width: _width,
        height: 380,
        top: _offset.dy - 390,
        child: _IssueListView(
          tagIssue: _tagIssue,
          onClose: () => _shouldHideOverlay(true),
        ),
      ),
    );
  }

  bool _defer = false;
  String _selectedId = "";

  void _search(String query) {
    if (query.isEmpty) return;

    _shouldHideOverlay(false);
    _searchViewModel.search(query.trim());
  }

  void _tagIssue(String id) {
    _shouldSearch = false;
    _shouldHideOverlay(true);

    id = "#${id.trim()} ";

    final text = controller.text;
    late final position = controller.selection.base.offset - 1;
    int index = 0;
    if (position != text.length - 1) {
      index = text.substring(0, position).lastIndexOf("#");
    } else {
      index = text.lastIndexOf("#");
    }
    if (index >= 0) {
      final part1 = text.substring(0, index);
      final part2 = text.substring(position + 1, text.length);
      _defer = true;
      final newText = part1 + id + part2;
      _lastCachedText = newText;
      controller.text = newText;
      _defer = true;

      int offset = index + id.length + 1;
      if (offset > newText.length) offset -= 1;

      controller.selection = TextSelection.fromPosition(
        TextPosition(
          offset: offset,
        ),
      );
    }
  }

  bool _removeEditedTags() {
    try {
      final text = controller.text;
      if (text.isEmpty) {
        _lastCachedText = text;
        return false;
      }
      final position = controller.selection.base.offset - 1;
      if (text[position] == "#") {
        _shouldSearch = true;
        return false;
      }
    } catch (e, trace) {
      debugPrint("FROM _removeEditedTags: $e");
      debugPrint("FROM _removeEditedTags: $trace");
    }
    _lastCachedText = controller.text;
    _defer = false;
    return false;
  }

  void _removeSelection() {
    _selectedId = "";
    _lastCachedText = controller.text;
    _startOffset = null;
  }

  int? _startOffset;
  String _lastCachedText = "";

  bool _shouldSearch = false;

  late final _regExp = RegExp(r'^[0-9]*$');

  bool _backtrackAndSearch() {
    String text = controller.text;
    if (!text.contains("#")) return true;

    final length = controller.selection.base.offset - 1;

    late String temp = "";

    for (int i = length; i >= 0; i--) {
      if (i == length && text[i] == "#") return true;

      if (!_regExp.hasMatch(text[i]) && text[i] != "#") return true;

      temp = text[i] + temp;
      if (text[i] == "#" && temp.length > 1) {
        _shouldSearch = true;
        _extractAndSearch(controller.text, length);
        return false;
      }
    }

    _lastCachedText = controller.text;
    return true;
  }

  void _shiftCursorForTaggedIssue() {
    String text = controller.text;
    if (!text.contains("#")) return;

    final length = controller.selection.base.offset - 1;

    late String temp = "";

    for (int i = length; i >= 0; i--) {
      if (i == length && text[i] == "#") {
        temp = "#";
        break;
      }

      temp = text[i] + temp;
      if (text[i] == "#" && temp.length > 1) break;
    }

    if (temp.isEmpty) return;
  }

  void _tagListener() {
    if (_defer) {
      _defer = false;
      return;
    }

    final text = controller.text;

    if (text.isEmpty && _selectedId.isNotEmpty) {
      _removeSelection();
    }

    if (_startOffset != null &&
        controller.selection.base.offset != _startOffset) {
      _selectedId = "";
      _startOffset = null;
    }

    late final position = controller.selection.base.offset - 1;

    if (_shouldSearch && position != text.length - 1 && text.contains("#")) {
      _extractAndSearch(text, position);
      return;
    }

    if (_lastCachedText == text) {
      _shiftCursorForTaggedIssue();
      return;
    }

    if (_lastCachedText.trim().length > text.trim().length) {
      if (_removeEditedTags()) {
        _shouldHideOverlay(true);
        return;
      }
      _shiftCursorForTaggedIssue();
      final hideOverlay = _backtrackAndSearch();
      if (hideOverlay) _shouldHideOverlay(true);
      return;
    }
    _lastCachedText = text;

    if (text[position] == "#") {
      _shouldSearch = true;
      return;
    }

    if (!_regExp.hasMatch(text[position])) {
      _shouldSearch = false;
    }

    if (_shouldSearch) {
      _extractAndSearch(text, position);
    } else {
      _shouldHideOverlay(true);
    }
  }

  void _extractAndSearch(String text, int endOffset) {
    try {
      int index = text.substring(0, endOffset).lastIndexOf("#");

      if (index < 0) return;

      final issueName = text.substring(
        index + 1,
        endOffset + 1,
      );
      if (issueName.isNotEmpty) _search(issueName);
    } catch (e, trace) {
      debugPrint("$trace");
    }
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_tagListener);
    _searchViewModel.setIssues(widget.issueList);
  }

  @override
  void dispose() {
    controller.removeListener(_tagListener);
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.onCreate?.call(() {
      _shouldHideOverlay(true);
    });
    return widget.builder(context, _containerKey);
  }
}

class _IssueListView extends StatelessWidget {
  final Function(String) tagIssue;
  final VoidCallback onClose;
  const _IssueListView({
    Key? key,
    required this.tagIssue,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: const Offset(0, -5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder<bool>(
            valueListenable: _searchViewModel.loading,
            builder: (_, loading, __) {
              return ValueListenableBuilder<List<Issue>>(
                valueListenable: _searchViewModel.issues,
                builder: (_, issues, __) {
                  if (loading && issues.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: onClose,
                          icon: const Icon(Icons.close),
                        ),
                      ),
                      if (issues.isEmpty)
                        Center(
                          child: Text(
                            "No issue found",
                            style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                color: Color(0xFF737373),
                              ),
                            ),
                          ),
                        )
                      else
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: issues.length,
                            itemBuilder: (_, index) {
                              final issue = issues[index];
                              return ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          issue.screenshotsLink![0]),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  issue.description,
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF737373),
                                    ),
                                  ),
                                  maxLines: 2,
                                ),
                                subtitle: Text(
                                  "#${issue.id!.toString()}",
                                  style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                      color: Color(0xFF737373),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  tagIssue(issue.id!.toString());
                                },
                              );
                            },
                          ),
                        ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
