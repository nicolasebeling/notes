import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  InputBar({Key? key, required this.onSubmit}) : super(key: key);

  final controller = TextEditingController();
  final Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
              ),
            ),
            TextButton(
              onPressed: () {
                onSubmit(controller.text);
                controller.clear();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
