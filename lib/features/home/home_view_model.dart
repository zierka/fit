import 'package:fit/domain/common/execution.dart';
import 'package:fit/domain/models/models.dart';
import 'package:fit/domain/repositories/workout_repo.dart';
import 'package:flutter/foundation.dart';

import 'home_state.dart';

class HomeViewModel {
  HomeViewModel(this._workoutRepo) {
    _loadData();
  }

  final WorkoutRepo _workoutRepo;

  final _state = ValueNotifier<HomeState>(HomeState());

  ValueListenable<HomeState> get state => _state;

  void _loadData() async {
    _emit(dataLoadingExecution: const Executing());

    await Future.delayed(const Duration(seconds: 1));

    final plan = await _workoutRepo.loadWorkoutPlan();
    final history = await _workoutRepo.loadWorkoutSessionHistory();

    _emit(
      dataLoadingExecution: const Succeeded(),
      workoutPlan: plan,
      workoutHistory: history,
    );
  }

  void _emit({
    Execution? dataLoadingExecution,
    WorkoutPlan? workoutPlan,
    WorkoutSessionHistory? workoutHistory,
  }) {
    _state.value = _state.value.copyWith(
      dataLoadingExecution: dataLoadingExecution,
      workoutPlan: workoutPlan,
      workoutHistory: workoutHistory,
    );
  }
}
