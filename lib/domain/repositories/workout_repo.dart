import 'package:fit/domain/models/models.dart';

abstract class WorkoutRepo {
  Future<WorkoutPlan?> loadWorkoutPlan();
  Future<void> saveWorkoutPlan(WorkoutPlan plan);

  Future<WorkoutDay?> loadNextWorkoutSession();

  Future<WorkoutSessionHistory> loadWorkoutSessionHistory();
}
