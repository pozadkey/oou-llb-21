// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/views/articles/entrepreneurs/entrepreneur_details_tab.dart';
import 'package:legal_achievers/views/articles/poems/poem_details_tab.dart';
import '../../model/articles_models/entrepreneur_model.dart';
import '../../model/articles_models/poem_model.dart';
import '../../model/articles_models/story_model.dart';
import 'stories/story_details_tab.dart';

class ArticlesTab extends StatefulWidget {
  const ArticlesTab({Key? key}) : super(key: key);

  @override
  State<ArticlesTab> createState() => _ArticlesTabState();
}

class _ArticlesTabState extends State<ArticlesTab> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.41);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                  middle: Text(
                'Articles',
                style: _headerfonts,
              )),
              child: CupertinoScrollbar(
                thickness: 2,
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                                Entrepreneur entrepreneurs =
                                    entrepreneurList[index];
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
                                      setState(() {
                                        sidePage = EntrepreneurDetailsTab(
                                            entrepreneurs: entrepreneurs);
                                      });
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
                                      setState(() {
                                        sidePage =
                                            StoryDetailsTab(story: stories);
                                      });
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
                                      setState(() {
                                        sidePage = PoemDetailsTab(poem: poems);
                                      });
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
            )),
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

  Widget sidePage = StatefulBuilder(builder: (context, builder) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        entrepreneurList[0].title,
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
          body: CupertinoScrollbar(
            thickness: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: ListView(
                children: [
                  Text('Full name: \n${entrepreneurList[0].name}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Brand name: \n${entrepreneurList[0].brand}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Inspiration for business/brand name:\n${entrepreneurList[0].inspiration}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Month and year of take-off:\n${entrepreneurList[0].startDate}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Scope of activities (what you do): \n${entrepreneurList[0].scope}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Future plans: \n${entrepreneurList[0].plans}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Highest achievement so far: \n${entrepreneurList[0].achievements}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'What keeps you going: \n${entrepreneurList[0].motivation}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Has your brand been registered?: \n${entrepreneurList[0].registered}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Current news: \n${entrepreneurList[0].current}',
                      style: _textfonts),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  });
}
