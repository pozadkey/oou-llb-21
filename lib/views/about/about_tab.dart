// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/articles_models/note_model.dart';
import 'note_details_tab.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab>
    with AutomaticKeepAliveClientMixin<AboutTab> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.08);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  late int selectedIndex = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                middle: Text(
              'About',
              style: _headerfonts,
            )),
            child: CupertinoScrollbar(
              thickness: 2,
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'The trail blazers set of the 2020/2021 session with a total of one hundred and ninety nine (199) finalists who have taken strides through every look and cranny of the Olabisi Onabanjo University their Alma mater till the climax of their Legum Baccalaureus Journey.\n5years, 10 Semesters, 64 courses and 215Units.\nThe Trail Blazers. Watimagbo!!!',
                              style: _textfonts),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Divider(
                            color: Colors.grey[400],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'FAREWELL MESSAGES',
                                style: _sub_header_fonts,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey[400],
                        ),
                        ListView.separated(
                          padding: EdgeInsets.all(0),
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              color: Colors.grey[400],
                            );
                          },
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: noteList.length,
                          itemBuilder: (context, index) {
                            Note notes = noteList[index];
                            return Center(
                              child: ListTile(
                                tileColor: selectedIndex == index
                                    ? Colors.yellow[700]
                                    : null,
                                title: Text(
                                  notes.title,
                                  style: _textfonts,
                                ),
                                trailing: Icon(
                                  Icons.navigate_next_rounded,
                                  color: Colors.yellow[700],
                                  size: 25,
                                ),
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                    sidePage = NoteDetailsTab(note: notes);
                                  });
                                },
                              ),
                            );
                          },
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        VerticalDivider(
          color: Colors.grey[300],
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(
            child: sidePage,
          ),
        ),
      ],
    );
  }

  Widget sidePage = CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
        middle: Text(
      noteList[0].title,
      style: TextStyle(color: Colors.yellow[700]),
    )),
    child: SafeArea(
      child: Scaffold(
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                    child: Text(noteList[0].content,
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
