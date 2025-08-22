import 'package:dart_mappable/dart_mappable.dart';

import 'workout_set.dart';

part 'workout_day.mapper.dart';

@MappableClass()
class WorkoutDay with WorkoutDayMappable {
  final int weekNumber;
  final int dayNumber;
  final List<WorkoutSet> exercises;

  WorkoutDay({
    required this.weekNumber,
    required this.dayNumber,
    required this.exercises,
  });

  String get weekAndDay => 'Week $weekNumber / Day $dayNumber';

  @override
  String toString() {
    final buffer = StringBuffer('Day $dayNumber:\n');
    exercises.forEach((workoutSet) {
      buffer.writeln('$workoutSet -> T ${workoutSet.totalReps}');
    });
    return buffer.toString();
  }
}
