import 'package:flutter/material.dart';

class NoteListTile extends StatelessWidget {
  const NoteListTile({
    Key? key,
    required this.note,
    required this.onDelete,
  }) : super(key: key);

  final String note;
  final Function(String) onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        top: 16,
        left: 4,
        right: 4,
        bottom: 4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(note),
        ),
        trailing: IconButton(
          onPressed: () => onDelete(note),
          splashRadius: 20,
          icon: const Icon(Icons.close_rounded),
        ),
      ),
    );
  }
}
