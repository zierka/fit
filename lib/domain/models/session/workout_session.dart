import 'package:dart_mappable/dart_mappable.dart';

import '../models.dart';

part 'workout_session.mapper.dart';

@MappableClass()
class WorkoutSession with WorkoutSessionMappable {
  WorkoutSession({required this.date, required this.day});

  final DateTime date;
  final WorkoutDay day;
}
