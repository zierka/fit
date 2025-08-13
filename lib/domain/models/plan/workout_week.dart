import 'package:dart_mappable/dart_mappable.dart';

import 'workout_day.dart';

part 'workout_week.mapper.dart';

@MappableClass()
class WorkoutWeek with WorkoutWeekMappable {
  WorkoutWeek({required this.weekNumber, required this.days});

  final int weekNumber;
  final List<WorkoutDay> days;

  @override
  String toString() {
    final buffer = StringBuffer('Week $weekNumber:\n');
    for (final day in days) {
      buffer.writeln(day.toString());
    }
    return buffer.toString();
  }
}
