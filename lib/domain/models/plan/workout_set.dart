import 'package:dart_mappable/dart_mappable.dart';
import 'package:fit/domain/models/models.dart';

part 'workout_set.mapper.dart';

@MappableClass()
class WorkoutSet with WorkoutSetMappable {
  final Exercise exercise;
  final List<int> reps;

  WorkoutSet(this.exercise, this.reps);

  int get maxReps => reps.isNotEmpty ? reps.reduce((a, b) => a > b ? a : b) : 0;

  int get totalReps => reps.isNotEmpty ? reps.reduce((a, b) => a + b) : 0;

  @override
  String toString() => reps.toString();
}
