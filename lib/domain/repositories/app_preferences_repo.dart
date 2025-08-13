import 'package:fit/domain/models/models.dart';

abstract class AppPreferencesRepo {
  Future<WorkoutPlan?> loadWorkoutPlan();
  Future<void> saveWorkoutPlan(WorkoutPlan plan);

  Future<WorkoutSessionHistory> loadWorkoutSessionHistory();
}
