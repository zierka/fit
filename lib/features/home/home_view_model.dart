import 'package:fit/domain/models/models.dart';
import 'package:fit/domain/repositories/workout_repo.dart';

class HomeViewModel {
  HomeViewModel(this._workoutRepo) {
    _load();
  }

  final WorkoutRepo _workoutRepo;

  late final WorkoutPlan plan;
  late final WorkoutSessionHistory history;

  void _load() {
    plan = WorkoutPlan(exercises: exercises, weeks: 10);
    history = _history;
  }
}

final exercises = [
  ExercisePlan(
    exercise: Exercise(name: 'Pushup'),
    startReps: 5,
    targetReps: 39,
  ),
  ExercisePlan(exercise: Exercise(name: 'Situp'), startReps: 9, targetReps: 48),
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
      weekNumber: 1,
      day: WorkoutDay(
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
