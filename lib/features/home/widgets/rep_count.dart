import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

class RepCount extends StatelessWidget {
  const RepCount({
    super.key,
    required this.reps,
    required this.type,
    this.size = RepCountSize.small,
    this.filled = true,
    this.dimmed = false,
  });

  final int reps;
  final RepCountType type;
  final RepCountSize size;
  final bool filled;
  final bool dimmed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    final textTheme = (switch (size) {
      RepCountSize.small => theme.bodyLarge,
      RepCountSize.large => theme.titleLarge,
    })?.copyWith(color: filled ? Colors.black : color);

    return Container(
      width: size.size,
      height: size.size,
      margin: EdgeInsets.all(Dim.x4),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: filled ? color : null,
        shape: CircleBorder(side: BorderSide(color: color, width: 1)),
      ),
      child: Text(reps.toString(), style: textTheme),
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

enum RepCountSize { small, large }

extension on RepCountSize {
  double get size => switch (this) {
    RepCountSize.small => 30.0,
    RepCountSize.large => 50.0,
  };
}
