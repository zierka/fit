import 'package:dart_mappable/dart_mappable.dart';
import 'package:fit/domain/models/session/workout_session.dart';

part 'workout_session_history.mapper.dart';

@MappableClass()
class WorkoutSessionHistory with WorkoutSessionHistoryMappable {
  WorkoutSessionHistory({required this.workouts});

  final List<WorkoutSession> workouts;
}
