import 'package:fit/domain/models/models.dart';

abstract class AppPreferencesRepo {
  Future<WorkoutPlan?> getWorkoutPlan();
  Future<void> setWorkoutPlan(WorkoutPlan plan);

  Future<WorkoutSessionHistory?> getWorkoutSessionHistory();
  Future<void> setWorkoutSessionHistory(WorkoutSessionHistory history);
}
