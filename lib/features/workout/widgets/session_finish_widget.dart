import 'package:fit/features/workout/models/session_action.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

class SessionFinishWidget extends StatelessWidget {
  const SessionFinishWidget({super.key, required this.sessionFinish});

  final SessionFinish sessionFinish;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        spacer(Dim.x32),
        Text(
          'yay, finished!',
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
        spacer(Dim.x16),
      ],
    );
  }
}
