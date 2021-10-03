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
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple,
            Colors.transparent,
            Colors.transparent,
            Colors.purple,
          ],
          stops: [
            0.0,
            0.05,
            0.95,
            1.0,
          ],
        ).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: (context, index) => NoteListTile(
          note: notes[index],
          onDelete: onDelete,
        ),
        itemCount: notes.length,
      ),
    );
  }
}
