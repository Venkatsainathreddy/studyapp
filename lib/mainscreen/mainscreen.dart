import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:studyapp/mainscreen/notes.dart';
import 'package:studyapp/mainscreen/questionpapers.dart';
import 'package:studyapp/mainscreen/syllabuscopy.dart';


class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.notes), text: "Notes",),
              Tab(icon: Icon(Icons.book), text: "Syllabus Copy"),
              Tab(icon: Icon(Icons.book_online_outlined), text: "Question Papers"),
            ],
          ),
          title: Text('Resources'),
        ),
        body: TabBarView(
          children: [
            ExamNotes(),
            SyllabusCopy(),
            QuestionPapers(),
          ],
        ),
      ),
    );
  }
}

