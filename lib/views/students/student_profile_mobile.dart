// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_returning_null_for_void

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';
import 'package:legal_achievers/views/gallery/gallery_mobile.dart';

import '../about/about_mobile.dart';
import '../articles/articles_mobile.dart';
import 'sub_students/student_details.dart';

class StudentProfileMobile extends StatefulWidget {
  const StudentProfileMobile({Key? key}) : super(key: key);

  @override
  _StudentProfileMobileState createState() => _StudentProfileMobileState();
}

class _StudentProfileMobileState extends State<StudentProfileMobile> {
  final TextEditingController? _searchText = TextEditingController();

  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  List<Students> searchedStudents = [];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              'Students',
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
              child: _searchText!.text.isNotEmpty && searchedStudents.isEmpty
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
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
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                              Students students = _searchText!.text.isEmpty
                                  ? studentList[index]
                                  : searchedStudents[index];
                              studentList
                                  .sort((a, b) => a.name.compareTo(b.name));
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StudentDetails(
                                                  students: students,
                                                )));
                                  },
                                ),
                              );
                            }),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
