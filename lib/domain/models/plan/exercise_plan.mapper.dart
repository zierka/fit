// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'exercise_plan.dart';

class ExercisePlanMapper extends ClassMapperBase<ExercisePlan> {
  ExercisePlanMapper._();

  static ExercisePlanMapper? _instance;
  static ExercisePlanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExercisePlanMapper._());
      ExerciseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ExercisePlan';

  static Exercise _$exercise(ExercisePlan v) => v.exercise;
  static const Field<ExercisePlan, Exercise> _f$exercise = Field(
    'exercise',
    _$exercise,
  );
  static int _$startReps(ExercisePlan v) => v.startReps;
  static const Field<ExercisePlan, int> _f$startReps = Field(
    'startReps',
    _$startReps,
  );
  static int _$targetReps(ExercisePlan v) => v.targetReps;
  static const Field<ExercisePlan, int> _f$targetReps = Field(
    'targetReps',
    _$targetReps,
  );

  @override
  final MappableFields<ExercisePlan> fields = const {
    #exercise: _f$exercise,
    #startReps: _f$startReps,
    #targetReps: _f$targetReps,
  };

  static ExercisePlan _instantiate(DecodingData data) {
    return ExercisePlan(
      exercise: data.dec(_f$exercise),
      startReps: data.dec(_f$startReps),
      targetReps: data.dec(_f$targetReps),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ExercisePlan fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ExercisePlan>(map);
  }

  static ExercisePlan fromJson(String json) {
    return ensureInitialized().decodeJson<ExercisePlan>(json);
  }
}

mixin ExercisePlanMappable {
  String toJson() {
    return ExercisePlanMapper.ensureInitialized().encodeJson<ExercisePlan>(
      this as ExercisePlan,
    );
  }

  Map<String, dynamic> toMap() {
    return ExercisePlanMapper.ensureInitialized().encodeMap<ExercisePlan>(
      this as ExercisePlan,
    );
  }

  ExercisePlanCopyWith<ExercisePlan, ExercisePlan, ExercisePlan> get copyWith =>
      _ExercisePlanCopyWithImpl<ExercisePlan, ExercisePlan>(
        this as ExercisePlan,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ExercisePlanMapper.ensureInitialized().stringifyValue(
      this as ExercisePlan,
    );
  }

  @override
  bool operator ==(Object other) {
    return ExercisePlanMapper.ensureInitialized().equalsValue(
      this as ExercisePlan,
      other,
    );
  }

  @override
  int get hashCode {
    return ExercisePlanMapper.ensureInitialized().hashValue(
      this as ExercisePlan,
    );
  }
}

extension ExercisePlanValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ExercisePlan, $Out> {
  ExercisePlanCopyWith<$R, ExercisePlan, $Out> get $asExercisePlan =>
      $base.as((v, t, t2) => _ExercisePlanCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ExercisePlanCopyWith<$R, $In extends ExercisePlan, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ExerciseCopyWith<$R, Exercise, Exercise> get exercise;
  $R call({Exercise? exercise, int? startReps, int? targetReps});
  ExercisePlanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ExercisePlanCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ExercisePlan, $Out>
    implements ExercisePlanCopyWith<$R, ExercisePlan, $Out> {
  _ExercisePlanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ExercisePlan> $mapper =
      ExercisePlanMapper.ensureInitialized();
  @override
  ExerciseCopyWith<$R, Exercise, Exercise> get exercise =>
      $value.exercise.copyWith.$chain((v) => call(exercise: v));
  @override
  $R call({Exercise? exercise, int? startReps, int? targetReps}) => $apply(
    FieldCopyWithData({
      if (exercise != null) #exercise: exercise,
      if (startReps != null) #startReps: startReps,
      if (targetReps != null) #targetReps: targetReps,
    }),
  );
  @override
  ExercisePlan $make(CopyWithData data) => ExercisePlan(
    exercise: data.get(#exercise, or: $value.exercise),
    startReps: data.get(#startReps, or: $value.startReps),
    targetReps: data.get(#targetReps, or: $value.targetReps),
  );

  @override
  ExercisePlanCopyWith<$R2, ExercisePlan, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ExercisePlanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

