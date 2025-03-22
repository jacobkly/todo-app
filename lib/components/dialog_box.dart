import 'package:flutter/material.dart';
import 'package:todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 175,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.yellow[200],
                filled: true,
                hintText: "Add a new task",
              ),
              cursorColor: Colors.black,
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave),

                // space between buttons
                const SizedBox(width: 10),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
