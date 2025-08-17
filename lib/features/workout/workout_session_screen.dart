import 'package:collection/collection.dart';
import 'package:fit/di/providers.dart';
import 'package:fit/features/home/widgets/rep_count.dart';
import 'package:fit/features/workout/workout_session_input.dart';
import 'package:fit/features/workout/workout_session_state.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/session_action.dart';
import 'widgets/session_exercise_widget.dart';
import 'widgets/session_finish_widget.dart';
import 'widgets/session_rest_widget.dart';

class WorkoutSessionScreen extends ConsumerStatefulWidget {
  const WorkoutSessionScreen({super.key, required this.input});

  final WorkoutSessionInput input;

  @override
  ConsumerState<WorkoutSessionScreen> createState() =>
      _WorkoutSessionScreenState();
}

class _WorkoutSessionScreenState extends ConsumerState<WorkoutSessionScreen> {
  late final _viewModel = ref.read(workoutSessionViewModel(widget.input));

  WorkoutSessionState get state => _viewModel.state.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.input.workoutDay.weekAndDay)),
      body: _body(),
    );
  }

  Widget _body() {
    return ValueListenableBuilder(
      valueListenable: _viewModel.state,
      builder: (context, state, _) {
        // return LoadingIndicator();

        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [spacer(Dim.x32), _content(), Spacer(), _action()],
        );
      },
    );
  }

  Widget _content() {
    return switch (state.currentAction) {
      SessionExercise e => SessionExerciseWidget(sessionExercise: e),
      SessionRest r => SessionRestWidget(sessionRest: r),
      SessionFinish f => SessionFinishWidget(sessionFinish: f),
    };
  }

  Widget _action() {
    return SafeArea(
      minimum: const EdgeInsets.all(Dim.x16),
      child: FilledButton.tonal(
        onPressed: _viewModel.onRepCompleted,
        child: Text('COMPLETED'),
      ),
    );
  }
}
