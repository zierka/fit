import 'package:fit/features/workout/models/session_action.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

class SessionRestWidget extends StatelessWidget {
  const SessionRestWidget({super.key, required this.sessionRest});

  final SessionRest sessionRest;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        spacer(Dim.x32),
        // Text(
        //   sessionExercise.exercise.name,
        //   style: Theme.of(context).textTheme.displayMedium,
        //   textAlign: TextAlign.center,
        // ),
        spacer(Dim.x16),
        // _set(),
        spacer(Dim.x16),
      ],
    );
  }
}
