import 'package:collection/collection.dart';
import 'package:fit/domain/repositories/app_preferences_repo.dart';

import '../models/models.dart';
import 'workout_repo.dart';

class WorkoutRepoImpl implements WorkoutRepo {
  WorkoutRepoImpl(this._appPreferencesRepo);

  final AppPreferencesRepo _appPreferencesRepo;

  @override
  Future<WorkoutPlan?> loadWorkoutPlan() async {
    // return _appPreferencesRepo.loadWorkoutPlan();

    return _plan;
  }

  @override
  Future<void> saveWorkoutPlan(WorkoutPlan plan) =>
      _appPreferencesRepo.saveWorkoutPlan(plan);

  @override
  Future<WorkoutDay?> loadNextWorkoutSession() async {
    final plan = await loadWorkoutPlan();

    if (plan == null) return null;

    final history = await loadWorkoutSessionHistory();

    final lastSession = history.workouts.lastOrNull;

    if (lastSession != null) {
      // lastSession.weekNumber;
      // final week = plan.weeksPlan.firstWhereOrNull(
      //   (week) => week.weekNumber == lastSession.weekNumber,
      // )!;

      return plan.weeksPlan.first.days.first;
    } else {
      return plan.weeksPlan.first.days.first;
    }
  }

  @override
  Future<WorkoutSessionHistory> loadWorkoutSessionHistory() async {
    // return _appPreferencesRepo.loadWorkoutSessionHistory();

    return _history;
  }

  //

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

  final _history = WorkoutSessionHistory(
    workouts: [
      WorkoutSession(
        date: DateTime.now(),
        day: WorkoutDay(
          weekNumber: 2,
          dayNumber: 1,
          exercises: {
            Exercise(name: 'Pushup'): WorkoutSet([5, 5, 5, 5, 5]),
            Exercise(name: 'Situp'): WorkoutSet([5, 5, 5, 5, 5]),
            Exercise(name: 'Squat'): WorkoutSet([5, 5, 5, 5, 5]),
            Exercise(name: 'Bench Dip'): WorkoutSet([5, 5, 5, 5, 5]),
          },
        ),
      ),
    ],
  );
}
