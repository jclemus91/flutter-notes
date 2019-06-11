import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_note_bloc.dart';

class AddNoteScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNoteScreen> {

  final _titleController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _titleController,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: "Title"),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: _messageController,
                decoration: InputDecoration(hintText: "Message"),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Cancel"),
                    onPressed: () {
                      print("printear");
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 8.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: RaisedButton(
                      child: Text("Save"),
                      onPressed: () {
                        addNoteBloc.createNote(
                            _titleController.text,
                            _messageController.text
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }

}