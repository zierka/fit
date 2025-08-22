import 'package:collection/collection.dart';
import 'package:fit/features/home/widgets/rep_count.dart';
import 'package:fit/features/workout/models/session_action.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

class SessionExerciseWidget extends StatelessWidget {
  const SessionExerciseWidget({super.key, required this.sessionExercise});

  final SessionExercise sessionExercise;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        spacer(Dim.x32),
        Text(
          sessionExercise.exercise.name,
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
        spacer(Dim.x16),
        _set(),
        spacer(Dim.x16),
      ],
    );
  }

  Widget _set() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: sessionExercise.set.reps
          .mapIndexed(
            (index, rep) => RepCount(
              reps: rep,
              type: index >= sessionExercise.currentRepIndex
                  ? RepCountType.next
                  : RepCountType.current,
              size: RepCountSize.large,
              filled: index <= sessionExercise.currentRepIndex,
              dimmed: index > sessionExercise.currentRepIndex,
            ),
          )
          .toList(),
    );
  }
}
