import '../models.dart';

class WorkoutSession {
  WorkoutSession({
    required this.date,
    required this.weekNumber,
    required this.day,
  });

  final DateTime date;
  final int weekNumber;
  final WorkoutDay day;
}
