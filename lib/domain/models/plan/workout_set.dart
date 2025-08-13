import 'package:dart_mappable/dart_mappable.dart';

part 'workout_set.mapper.dart';

@MappableClass()
class WorkoutSet with WorkoutSetMappable {
  final List<int> reps;

  WorkoutSet(this.reps);

  int get maxReps => reps.isNotEmpty ? reps.reduce((a, b) => a > b ? a : b) : 0;

  @override
  String toString() => reps.toString();
}
