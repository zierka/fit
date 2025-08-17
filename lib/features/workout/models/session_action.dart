import 'package:fit/domain/models/models.dart';

sealed class SessionAction {}

class SessionExercise implements SessionAction {
  SessionExercise({
    required this.exercise,
    required this.set,
    required this.currentRepIndex,
  });

  final Exercise exercise;
  final WorkoutSet set;
  final int currentRepIndex;

  int get currentRepCount => set.reps[currentRepIndex];

  @override
  bool operator ==(covariant SessionExercise other) {
    if (identical(this, other)) return true;

    return other.exercise == exercise &&
        other.set == set &&
        other.currentRepIndex == currentRepIndex;
  }

  @override
  int get hashCode =>
      exercise.hashCode ^ set.hashCode ^ currentRepIndex.hashCode;
}

class SessionRest implements SessionAction {
  SessionRest({required this.duration});

  final Duration duration;

  @override
  bool operator ==(covariant SessionRest other) {
    if (identical(this, other)) return true;

    return other.duration == duration;
  }

  @override
  int get hashCode => duration.hashCode;
}

class SessionFinish implements SessionAction {
  SessionFinish();

  // @override
  // bool operator ==(covariant SessionFinish other) {
  //   if (identical(this, other)) return true;

  //   return other.duration == duration;
  // }

  // @override
  // int get hashCode => duration.hashCode;
}
