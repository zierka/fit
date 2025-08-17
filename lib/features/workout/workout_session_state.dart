import 'package:collection/collection.dart';

import 'package:fit/domain/models/models.dart';
import 'package:fit/features/workout/models/session_action.dart';

class WorkoutSessionState {
  const WorkoutSessionState({
    required this.workoutDay,
    required this.actions,
    required this.currentActionIndex,
  });

  final WorkoutDay workoutDay;
  final List<SessionAction> actions;

  final int currentActionIndex;

  SessionAction get currentAction => actions[currentActionIndex];

  WorkoutSessionState copyWith({
    List<SessionAction>? actions,
    int? currentActionIndex,
  }) {
    return WorkoutSessionState(
      workoutDay: workoutDay,
      actions: actions ?? this.actions,
      currentActionIndex: currentActionIndex ?? this.currentActionIndex,
    );
  }

  @override
  bool operator ==(covariant WorkoutSessionState other) {
    if (identical(this, other)) return true;

    return other.workoutDay == workoutDay &&
        const ListEquality().equals(other.actions, actions) &&
        other.currentActionIndex == currentActionIndex;
  }

  @override
  int get hashCode =>
      workoutDay.hashCode ^
      const ListEquality().hash(actions) ^
      currentActionIndex.hashCode;
}
