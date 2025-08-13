// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_plan.dart';

class WorkoutPlanMapper extends ClassMapperBase<WorkoutPlan> {
  WorkoutPlanMapper._();

  static WorkoutPlanMapper? _instance;
  static WorkoutPlanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutPlanMapper._());
      ExercisePlanMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutPlan';

  static List<ExercisePlan> _$exercises(WorkoutPlan v) => v.exercises;
  static const Field<WorkoutPlan, List<ExercisePlan>> _f$exercises = Field(
    'exercises',
    _$exercises,
  );
  static int _$weeks(WorkoutPlan v) => v.weeks;
  static const Field<WorkoutPlan, int> _f$weeks = Field('weeks', _$weeks);
  static int _$daysPerWeek(WorkoutPlan v) => v.daysPerWeek;
  static const Field<WorkoutPlan, int> _f$daysPerWeek = Field(
    'daysPerWeek',
    _$daysPerWeek,
    opt: true,
    def: 3,
  );
  static int _$setsPerDay(WorkoutPlan v) => v.setsPerDay;
  static const Field<WorkoutPlan, int> _f$setsPerDay = Field(
    'setsPerDay',
    _$setsPerDay,
    opt: true,
    def: 5,
  );
  static List<WorkoutWeek> _$weeksPlan(WorkoutPlan v) => v.weeksPlan;
  static const Field<WorkoutPlan, List<WorkoutWeek>> _f$weeksPlan = Field(
    'weeksPlan',
    _$weeksPlan,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<WorkoutPlan> fields = const {
    #exercises: _f$exercises,
    #weeks: _f$weeks,
    #daysPerWeek: _f$daysPerWeek,
    #setsPerDay: _f$setsPerDay,
    #weeksPlan: _f$weeksPlan,
  };

  static WorkoutPlan _instantiate(DecodingData data) {
    return WorkoutPlan(
      exercises: data.dec(_f$exercises),
      weeks: data.dec(_f$weeks),
      daysPerWeek: data.dec(_f$daysPerWeek),
      setsPerDay: data.dec(_f$setsPerDay),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutPlan fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutPlan>(map);
  }

  static WorkoutPlan fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutPlan>(json);
  }
}

mixin WorkoutPlanMappable {
  String toJson() {
    return WorkoutPlanMapper.ensureInitialized().encodeJson<WorkoutPlan>(
      this as WorkoutPlan,
    );
  }

  Map<String, dynamic> toMap() {
    return WorkoutPlanMapper.ensureInitialized().encodeMap<WorkoutPlan>(
      this as WorkoutPlan,
    );
  }

  WorkoutPlanCopyWith<WorkoutPlan, WorkoutPlan, WorkoutPlan> get copyWith =>
      _WorkoutPlanCopyWithImpl<WorkoutPlan, WorkoutPlan>(
        this as WorkoutPlan,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorkoutPlanMapper.ensureInitialized().stringifyValue(
      this as WorkoutPlan,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutPlanMapper.ensureInitialized().equalsValue(
      this as WorkoutPlan,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutPlanMapper.ensureInitialized().hashValue(this as WorkoutPlan);
  }
}

extension WorkoutPlanValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutPlan, $Out> {
  WorkoutPlanCopyWith<$R, WorkoutPlan, $Out> get $asWorkoutPlan =>
      $base.as((v, t, t2) => _WorkoutPlanCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorkoutPlanCopyWith<$R, $In extends WorkoutPlan, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ExercisePlan,
    ExercisePlanCopyWith<$R, ExercisePlan, ExercisePlan>
  >
  get exercises;
  $R call({
    List<ExercisePlan>? exercises,
    int? weeks,
    int? daysPerWeek,
    int? setsPerDay,
  });
  WorkoutPlanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkoutPlanCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutPlan, $Out>
    implements WorkoutPlanCopyWith<$R, WorkoutPlan, $Out> {
  _WorkoutPlanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutPlan> $mapper =
      WorkoutPlanMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ExercisePlan,
    ExercisePlanCopyWith<$R, ExercisePlan, ExercisePlan>
  >
  get exercises => ListCopyWith(
    $value.exercises,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(exercises: v),
  );
  @override
  $R call({
    List<ExercisePlan>? exercises,
    int? weeks,
    int? daysPerWeek,
    int? setsPerDay,
  }) => $apply(
    FieldCopyWithData({
      if (exercises != null) #exercises: exercises,
      if (weeks != null) #weeks: weeks,
      if (daysPerWeek != null) #daysPerWeek: daysPerWeek,
      if (setsPerDay != null) #setsPerDay: setsPerDay,
    }),
  );
  @override
  WorkoutPlan $make(CopyWithData data) => WorkoutPlan(
    exercises: data.get(#exercises, or: $value.exercises),
    weeks: data.get(#weeks, or: $value.weeks),
    daysPerWeek: data.get(#daysPerWeek, or: $value.daysPerWeek),
    setsPerDay: data.get(#setsPerDay, or: $value.setsPerDay),
  );

  @override
  WorkoutPlanCopyWith<$R2, WorkoutPlan, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorkoutPlanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

