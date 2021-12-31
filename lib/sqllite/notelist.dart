import 'package:first_app/sqllite/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'note.dart';
import 'noteDetail.dart';

class Notelist extends StatefulWidget {
  @override
  State<Notelist> createState() => _NotelistState();
}

class _NotelistState extends State<Notelist> {
  DatabaseHelper? databaseHelper = DatabaseHelper();
  List<Note>? notelist;
  int? count = 0;
  @override
  Widget build(BuildContext context) {
    if (notelist == null) {
      notelist = <Note>[];
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('TO-Do-List'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: () {
            navigatetoDetails(Note('', '', 2, ''), 'Add Note');
          }),
    );
  }

  ListView getNoteListView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (contex, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.deepPurple,
            elevation: 4.0,
            child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    'N',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  this.notelist![index].title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                subtitle: Text(
                  this.notelist![index].date,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: GestureDetector(
                  child: Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                  ),
                  onTap: () {
                    navigatetoDetails(this.notelist![index], 'Edit ToDo');
                  },
                )),
          );
        });
  }

  void navigatetoDetails(Note note, String title) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contex) {
          return NoteDetail(note, title);
        },
      ),
    );
    if (!result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper!.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> notelistFuture = databaseHelper!.ggetNoteList();
      notelistFuture.then((notelist) {
        setState(() {
          this.notelist = notelist;
          this.count = notelist.length;
        });
      });
    });
  }
}
