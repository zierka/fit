import 'package:collection/collection.dart';

import 'package:fit/domain/models/models.dart';
import 'package:fit/features/workout/models/session_action.dart';

class WorkoutSessionState {
  const WorkoutSessionState({
    required this.workoutDay,
    required this.actions,
    required this.currentActionIndex,
    this.closeSignal = false,
  });

  final WorkoutDay workoutDay;
  final List<SessionAction> actions;
  final int currentActionIndex;
  final bool closeSignal;

  SessionAction get currentAction => actions[currentActionIndex];

  WorkoutSessionState copyWith({int? currentActionIndex, bool? closeSignal}) {
    return WorkoutSessionState(
      workoutDay: workoutDay,
      actions: actions,
      currentActionIndex: currentActionIndex ?? this.currentActionIndex,
      closeSignal: closeSignal ?? this.closeSignal,
    );
  }

  @override
  bool operator ==(covariant WorkoutSessionState other) {
    if (identical(this, other)) return true;

    return other.workoutDay == workoutDay &&
        const ListEquality().equals(other.actions, actions) &&
        other.currentActionIndex == currentActionIndex &&
        other.closeSignal == closeSignal;
  }

  @override
  int get hashCode =>
      workoutDay.hashCode ^
      const ListEquality().hash(actions) ^
      currentActionIndex.hashCode ^
      closeSignal.hashCode;
}
