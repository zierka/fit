import 'workout_day.dart';

class WorkoutWeek {
  final int weekNumber;
  final List<WorkoutDay> days;

  WorkoutWeek({required this.weekNumber, required this.days});

  @override
  String toString() {
    final buffer = StringBuffer('Week $weekNumber:\n');
    for (final day in days) {
      buffer.writeln(day.toString());
    }
    return buffer.toString();
  }
}
