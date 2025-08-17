import 'package:dart_mappable/dart_mappable.dart';

import 'exercise.dart';
import 'workout_set.dart';

part 'workout_day.mapper.dart';

@MappableClass()
class WorkoutDay with WorkoutDayMappable {
  final int weekNumber;
  final int dayNumber;
  final Map<Exercise, WorkoutSet> exercises;

  WorkoutDay({
    required this.weekNumber,
    required this.dayNumber,
    required this.exercises,
  });

  @override
  String toString() {
    final buffer = StringBuffer('Day $dayNumber:\n');
    exercises.forEach((exercise, workoutSet) {
      buffer.writeln('  [${exercise.name}: ${workoutSet}');
    });
    return buffer.toString();
  }
}
