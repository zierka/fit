import 'package:fit/domain/common/execution.dart';
import 'package:fit/domain/models/models.dart';

class HomeState {
  const HomeState({
    this.dataLoadingExecution = const Idle(),
    this.workoutPlan,
    this.workoutHistory,
    this.nextWorkoutWeek,
  });

  final Execution dataLoadingExecution;
  final WorkoutPlan? workoutPlan;
  final WorkoutSessionHistory? workoutHistory;
  final WorkoutWeek? nextWorkoutWeek;

  @override
  bool operator ==(covariant HomeState other) {
    if (identical(this, other)) return true;

    return other.dataLoadingExecution == dataLoadingExecution &&
        other.workoutPlan == workoutPlan &&
        other.workoutHistory == workoutHistory &&
        other.nextWorkoutWeek == nextWorkoutWeek;
  }

  @override
  int get hashCode =>
      dataLoadingExecution.hashCode ^
      workoutPlan.hashCode ^
      workoutHistory.hashCode ^
      nextWorkoutWeek.hashCode;

  HomeState copyWith({
    Execution? dataLoadingExecution,
    WorkoutPlan? workoutPlan,
    WorkoutSessionHistory? workoutHistory,
    WorkoutWeek? nextWorkoutWeek,
  }) {
    return HomeState(
      dataLoadingExecution: dataLoadingExecution ?? this.dataLoadingExecution,
      workoutPlan: workoutPlan ?? this.workoutPlan,
      workoutHistory: workoutHistory ?? this.workoutHistory,
      nextWorkoutWeek: nextWorkoutWeek ?? this.nextWorkoutWeek,
    );
  }
}
