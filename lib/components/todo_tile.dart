import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              // checkbox
              Checkbox(
                value: isCompleted,
                onChanged: onChanged,
                activeColor: Colors.yellow[200],
              ),

              // task name
              Expanded(
                child: Text(
                  taskName,
                  style: TextStyle(
                    decoration:
                        isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
