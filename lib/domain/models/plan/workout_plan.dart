import 'package:dart_mappable/dart_mappable.dart';

import '../models.dart';

part 'workout_plan.mapper.dart';

/// Based on the provided exercises, nr of weeks, days per week, and sets per day,
/// generates a structured workout plan.
///
///
@MappableClass()
class WorkoutPlan with WorkoutPlanMappable {
  final List<ExercisePlan> exercises;
  final int weeks;
  final int daysPerWeek;
  final int setsPerDay;

  late List<WorkoutWeek> weeksPlan;

  WorkoutPlan({
    required this.exercises,
    required this.weeks,
    this.daysPerWeek = 3,
    this.setsPerDay = 5,
  }) {
    weeksPlan = _generatePlan();
  }

  ExercisePlan planForExercise(Exercise exercise) {
    return exercises.firstWhere((ex) => ex.exercise == exercise);
  }

  List<WorkoutWeek> _generatePlan() {
    List<WorkoutWeek> plan = [];

    for (var w = 1; w <= weeks; w++) {
      List<WorkoutDay> days = [];

      // Calculate base reps for each exercise at start of week
      Map<ExercisePlan, double> weeklyBase = {};
      for (var ex in exercises) {
        final start = ex.startReps;
        final target = ex.targetReps;
        weeklyBase[ex] = start + (target - start) * (w - 1) / (weeks - 1);
      }

      for (var d = 1; d <= daysPerWeek; d++) {
        Map<Exercise, WorkoutSet> dayExercises = {};

        for (var ex in exercises) {
          final base = weeklyBase[ex]!;

          final dayIncrement = (d - 1) * 0.1 * base;
          List<int> repsList = [];

          for (var s = 1; s <= setsPerDay; s++) {
            final setBase = base + dayIncrement + (s - 1) * 0.05 * base;

            int lastSetBonus = 0;
            if (s == setsPerDay) {
              if (base < 10) {
                lastSetBonus = 1;
              } else if (base < 20) {
                lastSetBonus = 2;
              } else {
                lastSetBonus = 3;
              }
            }

            int reps = (setBase + lastSetBonus).round();

            // Cap reps to not exceed target + 3
            reps = reps > ex.targetReps + 3 ? ex.targetReps + 3 : reps;
            reps = reps < 1 ? 1 : reps;

            repsList.add(reps);
          }

          dayExercises[ex.exercise] = WorkoutSet(repsList);
        }

        days.add(
          WorkoutDay(weekNumber: w, dayNumber: d, exercises: dayExercises),
        );
      }

      plan.add(WorkoutWeek(weekNumber: w, days: days));
    }

    return plan;
  }
}
