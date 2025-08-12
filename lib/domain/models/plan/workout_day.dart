import 'exercise.dart';
import 'workout_set.dart';

class WorkoutDay {
  final int dayNumber;
  final Map<Exercise, WorkoutSet> exercises;

  WorkoutDay({required this.dayNumber, required this.exercises});

  @override
  String toString() {
    final buffer = StringBuffer('Day $dayNumber:\n');
    exercises.forEach((exercise, workoutSet) {
      buffer.writeln('  [${exercise.name}: ${workoutSet}');
    });
    return buffer.toString();
  }
}
