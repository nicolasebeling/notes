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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(note),
        ),
        trailing: IconButton(
          color: Colors.red,
          onPressed: () => onDelete(note),
          splashRadius: 20,
          splashColor: Colors.red.withOpacity(0.2),
          icon: const Icon(Icons.delete_rounded),
        ),
      ),
    );
  }
}
