import 'package:dart_mappable/dart_mappable.dart';

import 'exercise.dart';

part 'exercise_plan.mapper.dart';

@MappableClass()
class ExercisePlan with ExercisePlanMappable {
  final Exercise exercise;
  final int startReps;
  final int targetReps;

  ExercisePlan({
    required this.exercise,
    required this.startReps,
    required this.targetReps,
  });
}
