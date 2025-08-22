import 'package:collection/collection.dart';
import 'package:fit/domain/repositories/app_preferences_repo.dart';

import '../models/models.dart';
import 'workout_repo.dart';

class WorkoutRepoImpl implements WorkoutRepo {
  WorkoutRepoImpl(this._appPreferencesRepo);

  final AppPreferencesRepo _appPreferencesRepo;

  @override
  Future<WorkoutPlan?> loadWorkoutPlan() async {
    final plan = await _appPreferencesRepo.getWorkoutPlan();

    if (plan == null) {
      await _appPreferencesRepo.setWorkoutPlan(_plan);

      return _plan;
    }

    return plan;
  }

  @override
  Future<void> saveWorkoutPlan(WorkoutPlan plan) =>
      _appPreferencesRepo.setWorkoutPlan(plan);

  @override
  Future<WorkoutDay?> loadNextWorkoutSession() async {
    final plan = await loadWorkoutPlan();

    if (plan == null) return null;

    final history = await loadWorkoutSessionHistory();

    final lastSession = history.workouts.lastOrNull;

    if (lastSession != null) {
      if (lastSession.day.dayNumber < plan.daysPerWeek - 1) {
        final week = plan.weeksPlan.firstWhereOrNull(
          (w) => w.weekNumber == lastSession.day.weekNumber,
        );

        return week!.days[lastSession.day.dayNumber + 1];
      } else {
        final week = plan.weeksPlan.firstWhereOrNull(
          (w) => w.weekNumber == lastSession.day.weekNumber + 1,
        );

        return week!.days.first;
      }
    } else {
      return null;
    }
  }

  @override
  Future<WorkoutSessionHistory> loadWorkoutSessionHistory() async {
    final history = await _appPreferencesRepo.getWorkoutSessionHistory();

    return history ?? WorkoutSessionHistory(workouts: []);
  }

  @override
  Future<void> saveWorkoutSession(WorkoutSession session) async {
    final history = await loadWorkoutSessionHistory();

    final updatedHistory = history.copyWith(
      workouts: [...history.workouts, session],
    );

    await _appPreferencesRepo.setWorkoutSessionHistory(updatedHistory);
  }

  late final _plan = WorkoutPlan(exercises: _exercises, weeks: 10);

  final _exercises = [
    ExercisePlan(
      exercise: Exercise(name: 'Pushup'),
      startReps: 5,
      targetReps: 39,
    ),
    ExercisePlan(
      exercise: Exercise(name: 'Situp'),
      startReps: 9,
      targetReps: 48,
    ),
    ExercisePlan(
      exercise: Exercise(name: 'Squat'),
      startReps: 10,
      targetReps: 54,
    ),
    ExercisePlan(
      exercise: Exercise(name: 'Bench Dip'),
      startReps: 5,
      targetReps: 38,
    ),
  ];
}
