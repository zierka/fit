// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'exercise.dart';

class ExerciseMapper extends ClassMapperBase<Exercise> {
  ExerciseMapper._();

  static ExerciseMapper? _instance;
  static ExerciseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExerciseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Exercise';

  static String _$name(Exercise v) => v.name;
  static const Field<Exercise, String> _f$name = Field('name', _$name);
  static int _$hashCode(Exercise v) => v.hashCode;
  static const Field<Exercise, int> _f$hashCode = Field(
    'hashCode',
    _$hashCode,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<Exercise> fields = const {
    #name: _f$name,
    #hashCode: _f$hashCode,
  };

  static Exercise _instantiate(DecodingData data) {
    return Exercise(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Exercise fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Exercise>(map);
  }

  static Exercise fromJson(String json) {
    return ensureInitialized().decodeJson<Exercise>(json);
  }
}

mixin ExerciseMappable {
  String toJson() {
    return ExerciseMapper.ensureInitialized().encodeJson<Exercise>(
      this as Exercise,
    );
  }

  Map<String, dynamic> toMap() {
    return ExerciseMapper.ensureInitialized().encodeMap<Exercise>(
      this as Exercise,
    );
  }

  ExerciseCopyWith<Exercise, Exercise, Exercise> get copyWith =>
      _ExerciseCopyWithImpl<Exercise, Exercise>(
        this as Exercise,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ExerciseMapper.ensureInitialized().stringifyValue(this as Exercise);
  }

  @override
  bool operator ==(Object other) {
    return ExerciseMapper.ensureInitialized().equalsValue(
      this as Exercise,
      other,
    );
  }

  @override
  int get hashCode {
    return ExerciseMapper.ensureInitialized().hashValue(this as Exercise);
  }
}

extension ExerciseValueCopy<$R, $Out> on ObjectCopyWith<$R, Exercise, $Out> {
  ExerciseCopyWith<$R, Exercise, $Out> get $asExercise =>
      $base.as((v, t, t2) => _ExerciseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ExerciseCopyWith<$R, $In extends Exercise, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  ExerciseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ExerciseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Exercise, $Out>
    implements ExerciseCopyWith<$R, Exercise, $Out> {
  _ExerciseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Exercise> $mapper =
      ExerciseMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  Exercise $make(CopyWithData data) =>
      Exercise(name: data.get(#name, or: $value.name));

  @override
  ExerciseCopyWith<$R2, Exercise, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ExerciseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

