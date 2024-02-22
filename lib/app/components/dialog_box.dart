import 'package:flutter/material.dart';
import 'package:flutter_todo_hive/app/components/todo_button.dart';

class DialogBox extends StatelessWidget {
  final dynamic controller;
  final VoidCallback? onSave;
  final VoidCallback? onCancel;

  const DialogBox({super.key, this.controller, this.onSave, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add new Task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                TodoButton(text: 'Save', onPressed: onSave),
                const SizedBox(width: 8),
                // cancel button
                TodoButton(text: 'Cancel', onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
