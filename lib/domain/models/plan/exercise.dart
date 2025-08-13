import 'package:dart_mappable/dart_mappable.dart';

part 'exercise.mapper.dart';

@MappableClass()
class Exercise with ExerciseMappable {
  final String name;

  Exercise({required this.name});

  @override
  bool operator ==(covariant Exercise other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
