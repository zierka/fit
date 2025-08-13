import 'package:fit/domain/frameworks/local_storage.dart';
import 'package:fit/domain/models/plan/workout_plan.dart';
import 'package:fit/domain/models/session/workout_session_history.dart';
import 'package:fit/domain/repositories/app_preferences_repo.dart';

class AppPreferencesRepoImpl implements AppPreferencesRepo {
  AppPreferencesRepoImpl(this._localStorage);

  final LocalStorage _localStorage;

  @override
  Future<WorkoutPlan?> loadWorkoutPlan() async {
    final json = await _localStorage.getJson(_Keys.workoutPlan);

    if (json != null) {
      return WorkoutPlanMapper.fromMap(json);
    } else {
      return null;
    }
  }

  @override
  Future<void> saveWorkoutPlan(WorkoutPlan plan) async {
    final json = plan.toMap();
    await _localStorage.setJson(_Keys.workoutPlan, json);
  }

  @override
  Future<WorkoutSessionHistory> loadWorkoutSessionHistory() async {
    final json = await _localStorage.getJson(_Keys.workoutSessionHistory);

    if (json != null) {
      return WorkoutSessionHistoryMapper.fromMap(json);
    } else {
      return WorkoutSessionHistory(workouts: []);
    }
  }
}

class _Keys {
  static const String workoutPlan = 'workout_plan';
  static const String workoutSessionHistory = 'workout_session_history';
}
