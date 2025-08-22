// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_set.dart';

class WorkoutSetMapper extends ClassMapperBase<WorkoutSet> {
  WorkoutSetMapper._();

  static WorkoutSetMapper? _instance;
  static WorkoutSetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutSetMapper._());
      ExerciseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutSet';

  static Exercise _$exercise(WorkoutSet v) => v.exercise;
  static const Field<WorkoutSet, Exercise> _f$exercise = Field(
    'exercise',
    _$exercise,
  );
  static List<int> _$reps(WorkoutSet v) => v.reps;
  static const Field<WorkoutSet, List<int>> _f$reps = Field('reps', _$reps);
  static int _$maxReps(WorkoutSet v) => v.maxReps;
  static const Field<WorkoutSet, int> _f$maxReps = Field(
    'maxReps',
    _$maxReps,
    mode: FieldMode.member,
  );
  static int _$totalReps(WorkoutSet v) => v.totalReps;
  static const Field<WorkoutSet, int> _f$totalReps = Field(
    'totalReps',
    _$totalReps,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<WorkoutSet> fields = const {
    #exercise: _f$exercise,
    #reps: _f$reps,
    #maxReps: _f$maxReps,
    #totalReps: _f$totalReps,
  };

  static WorkoutSet _instantiate(DecodingData data) {
    return WorkoutSet(data.dec(_f$exercise), data.dec(_f$reps));
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutSet fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutSet>(map);
  }

  static WorkoutSet fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutSet>(json);
  }
}

mixin WorkoutSetMappable {
  String toJson() {
    return WorkoutSetMapper.ensureInitialized().encodeJson<WorkoutSet>(
      this as WorkoutSet,
    );
  }

  Map<String, dynamic> toMap() {
    return WorkoutSetMapper.ensureInitialized().encodeMap<WorkoutSet>(
      this as WorkoutSet,
    );
  }

  WorkoutSetCopyWith<WorkoutSet, WorkoutSet, WorkoutSet> get copyWith =>
      _WorkoutSetCopyWithImpl<WorkoutSet, WorkoutSet>(
        this as WorkoutSet,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorkoutSetMapper.ensureInitialized().stringifyValue(
      this as WorkoutSet,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutSetMapper.ensureInitialized().equalsValue(
      this as WorkoutSet,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutSetMapper.ensureInitialized().hashValue(this as WorkoutSet);
  }
}

extension WorkoutSetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutSet, $Out> {
  WorkoutSetCopyWith<$R, WorkoutSet, $Out> get $asWorkoutSet =>
      $base.as((v, t, t2) => _WorkoutSetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorkoutSetCopyWith<$R, $In extends WorkoutSet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ExerciseCopyWith<$R, Exercise, Exercise> get exercise;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get reps;
  $R call({Exercise? exercise, List<int>? reps});
  WorkoutSetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkoutSetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutSet, $Out>
    implements WorkoutSetCopyWith<$R, WorkoutSet, $Out> {
  _WorkoutSetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutSet> $mapper =
      WorkoutSetMapper.ensureInitialized();
  @override
  ExerciseCopyWith<$R, Exercise, Exercise> get exercise =>
      $value.exercise.copyWith.$chain((v) => call(exercise: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get reps => ListCopyWith(
    $value.reps,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(reps: v),
  );
  @override
  $R call({Exercise? exercise, List<int>? reps}) => $apply(
    FieldCopyWithData({
      if (exercise != null) #exercise: exercise,
      if (reps != null) #reps: reps,
    }),
  );
  @override
  WorkoutSet $make(CopyWithData data) => WorkoutSet(
    data.get(#exercise, or: $value.exercise),
    data.get(#reps, or: $value.reps),
  );

  @override
  WorkoutSetCopyWith<$R2, WorkoutSet, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorkoutSetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

