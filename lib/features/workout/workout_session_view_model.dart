import 'package:fit/domain/models/models.dart';
import 'package:fit/domain/repositories/workout_repo.dart';
import 'package:fit/features/workout/models/session_action.dart';
import 'package:flutter/foundation.dart';

import 'workout_session_input.dart';
import 'workout_session_state.dart';

class WorkoutSessionViewModel {
  final WorkoutSessionInput input;
  final WorkoutRepo _workoutRepo;

  WorkoutSessionViewModel(this.input, this._workoutRepo);

  late final _state = ValueNotifier<WorkoutSessionState>(_initialState());

  ValueListenable<WorkoutSessionState> get state => _state;

  WorkoutSessionState _initialState() => WorkoutSessionState(
    workoutDay: input.workoutDay,
    actions: _sessionActions(input.workoutDay),
    currentActionIndex: 0,
  );

  List<SessionAction> _sessionActions(WorkoutDay workoutDay) {
    List<SessionAction> actions = [];

    final totalSets = workoutDay.exercises.values.first.reps.length;

    for (var i = 0; i < totalSets; i++) {
      final sessionExercises = workoutDay.exercises
          .map(
            (exercise, set) => MapEntry(
              exercise,
              SessionExercise(exercise: exercise, set: set, currentRepIndex: i),
            ),
          )
          .values;

      actions.addAll(sessionExercises);

      final rest = SessionRest(duration: Duration(seconds: 30));
      actions.add(rest);
    }

    actions.removeLast();

    final sessionFinish = SessionFinish();
    actions.add(sessionFinish);

    return actions;
  }

  void _emit({
    //
    int? currentActionIndex,
    bool? closeSignal,
  }) {
    _state.value = _state.value.copyWith(
      //
      currentActionIndex: currentActionIndex,
      closeSignal: closeSignal,
    );
  }

  void onRepCompleted() {
    final newIndex = _state.value.currentActionIndex + 1;

    if (newIndex > _state.value.actions.length - 1) {
      _emit(closeSignal: true);
    } else {
      _emit(currentActionIndex: newIndex);
    }
  }
}
