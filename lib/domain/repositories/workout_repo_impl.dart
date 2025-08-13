import 'package:collection/collection.dart';
import 'package:fit/domain/models/plan/workout_plan.dart';
import 'package:fit/domain/models/plan/workout_week.dart';
import 'package:fit/domain/models/session/workout_session_history.dart';
import 'package:fit/domain/repositories/app_preferences_repo.dart';

import 'workout_repo.dart';

class WorkoutRepoImpl implements WorkoutRepo {
  WorkoutRepoImpl(this._appPreferencesRepo);

  final AppPreferencesRepo _appPreferencesRepo;

  @override
  Future<WorkoutPlan?> loadWorkoutPlan() =>
      _appPreferencesRepo.loadWorkoutPlan();

  @override
  Future<void> saveWorkoutPlan(WorkoutPlan plan) =>
      _appPreferencesRepo.saveWorkoutPlan(plan);

  @override
  Future<WorkoutWeek?> loadNextWorkoutSession() async {
    final plan = await loadWorkoutPlan();

    if (plan == null) return null;

    final history = await loadWorkoutSessionHistory();

    final lastSession = history.workouts.lastOrNull;

    if (lastSession != null) {
      // lastSession.weekNumber;
      // final week = plan.weeksPlan.firstWhereOrNull(
      //   (week) => week.weekNumber == lastSession.weekNumber,
      // )!;

      return plan.weeksPlan.first;
    } else {
      return plan.weeksPlan.first;
    }
  }

  @override
  Future<WorkoutSessionHistory> loadWorkoutSessionHistory() =>
      _appPreferencesRepo.loadWorkoutSessionHistory();
}
