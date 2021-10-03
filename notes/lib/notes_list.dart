import 'package:flutter/material.dart';

import 'note_list_tile.dart';

class NotesList extends StatelessWidget {
  const NotesList({
    Key? key,
    required this.notes,
    required this.onDelete,
  }) : super(key: key);

  final List<String> notes;
  final Function(String) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemBuilder: (context, index) => NoteListTile(
        note: notes[index],
        onDelete: onDelete,
      ),
      itemCount: notes.length,
    );
  }
}
