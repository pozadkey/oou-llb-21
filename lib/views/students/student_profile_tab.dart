// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_returning_null_for_void

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';
import 'package:legal_achievers/views/students/sub_students/student_details_tab.dart';

import '../Gallery/sub_gallery/fullscreen/fullscreen.dart';

class StudentProfileTab extends StatefulWidget {
  const StudentProfileTab({Key? key}) : super(key: key);

  @override
  _StudentProfileTabState createState() => _StudentProfileTabState();
}

class _StudentProfileTabState extends State<StudentProfileTab>
    with AutomaticKeepAliveClientMixin<StudentProfileTab> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  final TextEditingController? _searchText = TextEditingController();

  List<Students> searchedStudents = [];

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
              'Students',
              style: _headerfonts,
            )),
            child: CupertinoScrollbar(
              thickness: 2,
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: _searchText!.text.isNotEmpty &&
                            searchedStudents.isEmpty
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 15, 5, 20),
                                child: CupertinoSearchTextField(
                                  placeholder: 'Search students',
                                  controller: _searchText,
                                  onChanged: (value) {
                                    setState(() {
                                      searchedStudents = studentList
                                          .where((stud) => stud.name
                                              .toLowerCase()
                                              .contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                ),
                              ),
                              //Text('not found')
                              Center(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.search_off_outlined,
                                      size: 40,
                                      color: Colors.yellow[700],
                                    ),
                                    Text(
                                      'No records found.',
                                      style: _textfonts,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
                                child: CupertinoSearchTextField(
                                  controller: _searchText,
                                  placeholder: 'Search students',
                                  onChanged: (value) {
                                    setState(() {
                                      searchedStudents = studentList
                                          .where((stud) => stud.name
                                              .toLowerCase()
                                              .contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.grey[300],
                              ),
                              ListView.separated(
                                  padding: const EdgeInsets.all(0),
                                  separatorBuilder: (context, index) => Divider(
                                        color: Colors.grey[300],
                                      ),
                                  physics: ScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _searchText!.text.isEmpty
                                      ? studentList.length
                                      : searchedStudents.length,
                                  addAutomaticKeepAlives: false,
                                  addRepaintBoundaries: false,
                                  itemBuilder: (context, index) {
                                    Students students =
                                        _searchText!.text.isEmpty
                                            ? studentList[index]
                                            : searchedStudents[index];
                                    studentList.sort(
                                        (a, b) => a.name.compareTo(b.name));
                                    return Center(
                                      child: ListTile(
                                        title: Text(
                                          students.name,
                                          style: _textfonts,
                                        ),
                                        leading: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.grey[200],
                                          backgroundImage: AssetImage(
                                            students.image,
                                          ),
                                        ),
                                        subtitle: Text(
                                          students.state_of_origin,
                                          style: _textfonts,
                                        ),
                                        trailing: Icon(
                                          Icons.navigate_next_rounded,
                                          color: Colors.yellow[700],
                                          size: 25,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            sidePage = StudentDetailsTab(
                                                students: students);
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
          ),
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
        '${studentList[0].name} ',
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
            body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FullScreen(photos: studentList[0].image),
                              ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            studentList[0].image,
                            height: 250,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Name:\n${studentList[0].name}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Nickname:\n${studentList[0].nickname}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'D.O.B:\n${studentList[0].dob}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'State of origin:\n${studentList[0].state_of_origin}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Mobile Number:\n${studentList[0].mobile_number}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Email: ${studentList[0].email}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'LinkedIn:\n${studentList[0].linkedIn}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Instagram:\n${studentList[0].instagram}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Facebook:\n${studentList[0].facebook}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Twitter:\n${studentList[0].twitter}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Position Held:\n${studentList[0].position_held}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Skills:\n${studentList[0].skills}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Hobbies:\n${studentList[0].hobbies}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Favourite Course:\n${studentList[0].favorite_course}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Class Crush:\n${studentList[0].class_crush}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Parting words:\n${studentList[0].parting_words}',
                          style: _textfonts,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  });
}
