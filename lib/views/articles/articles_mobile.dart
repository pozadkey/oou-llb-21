// ignore_for_file: prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, avoid_unnecessary_containers, unused_import, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';
import '../../model/articles_models/entrepreneur_model.dart';
import '../../model/articles_models/poem_model.dart';
import '../../model/articles_models/story_model.dart';
import '../about/about_mobile.dart';

import 'poems/poem_details.dart';
import 'entrepreneurs/entrepreneur_details.dart';
import 'stories/story_details.dart';

class ArticlesMobile extends StatefulWidget {
  const ArticlesMobile({Key? key}) : super(key: key);

  @override
  _ArticlesMobileState createState() => _ArticlesMobileState();
}

class _ArticlesMobileState extends State<ArticlesMobile>
    with AutomaticKeepAliveClientMixin<ArticlesMobile> {
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

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            heroTag: 'screenA',
            largeTitle: Text(
              'Articles',
              style: _headerfonts,
            ),
            automaticallyImplyLeading: false,
          )
        ],
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          'ENTREPRENEUR\'S CORNER',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  ListView.separated(
                      padding: EdgeInsets.all(0),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: entrepreneurList.length,
                      itemBuilder: (context, index) {
                        Entrepreneur entrepreneurs = entrepreneurList[index];
                        return Center(
                          child: ListTile(
                            title: Text(
                              entrepreneurs.title,
                              style: _textfonts,
                            ),
                            trailing: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.yellow[700],
                              size: 25,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EntrepreneurDetails(
                                      entrepreneurs: entrepreneurs)));
                            },
                          ),
                        );
                      }),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'STORY CORNER',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: storyList.length,
                      itemBuilder: (context, index) {
                        Story stories = storyList[index];
                        return Center(
                          child: ListTile(
                            title: Text(
                              stories.title,
                              style: _textfonts,
                            ),
                            trailing: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.yellow[700],
                              size: 25,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      StoryDetails(story: stories)));
                            },
                          ),
                        );
                      }),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'POEMS',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  ListView.separated(
                      padding: EdgeInsets.all(0),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: poemList.length,
                      itemBuilder: (context, index) {
                        Poem poems = poemList[index];
                        return Center(
                          child: ListTile(
                            title: Text(
                              poems.title,
                              style: _textfonts,
                            ),
                            trailing: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.yellow[700],
                              size: 25,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PoemDetails(
                                        poem: poems,
                                      )));
                            },
                          ),
                        );
                      }),
                  Divider(
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
