import 'package:flutter/material.dart';

class RepCount extends StatelessWidget {
  const RepCount({super.key, required this.reps, required this.type});

  final int reps;
  final RepCountType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: color,
        shape: CircleBorder(side: BorderSide(color: color, width: 1)),
      ),
      child: Text(
        reps.toString(),
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: Colors.black),
      ),
    );
  }

  Color get color {
    switch (type) {
      case RepCountType.start:
        return Colors.blue[300]!;
      case RepCountType.current:
        return Colors.yellow[300]!;
      case RepCountType.next:
        return Colors.orange[300]!;
      case RepCountType.target:
        return Colors.green[300]!;
    }
  }
}

enum RepCountType { start, current, next, target }
