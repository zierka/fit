import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

class RepCount extends StatelessWidget {
  const RepCount({
    super.key,
    required this.reps,
    required this.type,
    this.filled = true,
    this.dimmed = false,
  });

  final int reps;
  final RepCountType type;
  final bool filled;
  final bool dimmed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.all(Dim.x4),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: filled ? color : null,
        shape: CircleBorder(side: BorderSide(color: color, width: 1)),
      ),
      child: Text(
        reps.toString(),
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: filled ? Colors.black : color),
      ),
    );
  }

  Color get color {
    final color_ = switch (type) {
      RepCountType.start => Colors.blue[300]!,
      RepCountType.current => Colors.yellow[300]!,
      RepCountType.next => Colors.orange[300]!,
      RepCountType.target => Colors.green[300]!,
    };

    return color_.withValues(alpha: dimmed ? 0.65 : 1.0);
  }
}

enum RepCountType { start, current, next, target }
