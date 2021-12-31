import 'package:first_app/sqllite/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'note.dart';

class NoteDetail extends StatefulWidget {
  final Note? note;
  final String? appBarTitle;

  NoteDetail(this.note, this.appBarTitle);
  @override
  State<StatefulWidget> createState() {
    return _NoteDetailState(this.note, this.appBarTitle!);
  }
}

class _NoteDetailState extends State<NoteDetail> {
  static var _priority = ['High', 'Low'];
  DatabaseHelper? helper = DatabaseHelper();
  String? appBarTitle;
  Note? note;

  _NoteDetailState(this.note, this.appBarTitle);

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle? textstyle = Theme.of(context).textTheme.headline1;
    titlecontroller.text = note!.title;
    desccontroller.text = note!.des;
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text(appBarTitle!),
        backgroundColor: Colors.cyan,
        leading: IconButton(
            onPressed: () {
              moveToLastScreen();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                child: ListTile(
                  leading: Icon(Icons.low_priority),
                  title: DropdownButton(
                      items: _priority.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(
                              dropDownStringItem,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ));
                      }).toList(),
                      value: getPriorityAsString(note!.priority),
                      onChanged: (valueSelectedByUser) {
                        setState(() {
                          updatePriorityAsInt(valueSelectedByUser);
                        });
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: TextField(
                  controller: titlecontroller,
                  style: textstyle,
                  onChanged: (value) {
                    updateTitle();
                  },
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textstyle,
                    icon: Icon(Icons.title),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: TextField(
                    controller: desccontroller,
                    style: textstyle,
                    onChanged: (value) {
                      updateDesc();
                    },
                    decoration: InputDecoration(
                      labelText: 'Details',
                      labelStyle: textstyle,
                      icon: Icon(Icons.details),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Expanded(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        setState(
                          () {
                            debugPrint('Save button clicked');
                            _saved();
                          },
                        );
                      },
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SAVE'),
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                  ),
                  Expanded(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        setState(
                          () {
                            debugPrint('Save button clicked');
                            // _delete();
                          },
                        );
                      },
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Delete'),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateTitle() {
    note!.title = titlecontroller.text;
  }

  void updateDesc() {
    note!.des = desccontroller.text;
  }

  // void _delete() async {
  //   moveToLastScreen();
  //   // ignore: unnecessary_null_comparison
  //   if (note!.id != null) {
  //     _showAlertDialog('Status', 'First add a note');
  //     return;
  //   }
  //   int? result = await helper!.deleteNote(note!.id);
  //   if (result != 0) {
  //     _showAlertDialog('Status', 'Note deleted Successfully');
  //     print(result);
  //   } else {
  //     _showAlertDialog('Status', 'Problem in deleting Note');
  //     print(result);
  //   }
  // }

  void _saved() async {
    moveToLastScreen();
    debugPrint(note!.title);

    debugPrint(note!.des);

    note!.date = DateFormat.yMMMd().format(DateTime.now());
    int? result;
    print('h');
    result = await helper!.insertNote(note!);
    // ignore: unnecessary_null_comparison
    // if (note!.id != null) {
    //   print("iff");
    //   result = await helper!.updateNote(note!);
    // } else {
    //   print("else");

    // }

    if (result != 0) {
      _showAlertDialog('Status', 'Note deleted Successfully');
      print(result);
    } else {
      _showAlertDialog('Status', 'Problem in Saving note');
      print(result);
    }
  }

  void updatePriorityAsInt(dynamic value) {
    switch (value) {
      case 'High':
        note!.priority = 1;
        break;
      case 'Low':
        note!.priority = 2;
        break;
    }
  }

  String getPriorityAsString(int value) {
    String? priority;
    switch (value) {
      case 1:
        priority = _priority[0];
        break;
      case 2:
        priority = _priority[1];
        break;
    }
    return priority!;
  }

  moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void _showAlertDialog(String title, String msg) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(msg),
    );
    showDialog(context: context, builder: (_) => alertDialog);
    print(alertDialog.title);
  }
}
