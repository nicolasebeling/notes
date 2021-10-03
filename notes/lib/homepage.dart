import 'package:flutter/material.dart';

import 'input_bar.dart';
import 'notes_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var notes = <String>[];

  void addNote(String note) {
    if (note.isNotEmpty && !notes.contains(note)) {
      setState(() {
        notes.insert(0, note);
      });
    }
  }

  void deleteNote(String note) {
    if (notes.contains(note)) {
      setState(() {
        notes.remove(note);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InputBar(
                onSubmit: addNote,
              ),
              Expanded(
                child: NotesList(
                  notes: notes,
                  onDelete: deleteNote,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
