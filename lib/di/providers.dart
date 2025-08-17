import 'package:fit/domain/frameworks/local_storage.dart';
import 'package:fit/domain/frameworks/local_storage_impl.dart';
import 'package:fit/domain/repositories/app_preferences_repo.dart';
import 'package:fit/domain/repositories/app_preferences_repo_impl.dart';
import 'package:fit/domain/repositories/workout_repo.dart';
import 'package:fit/domain/repositories/workout_repo_impl.dart';
import 'package:fit/features/home/home_view_model.dart';
import 'package:fit/features/workout/workout_session_input.dart';
import 'package:fit/features/workout/workout_session_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// frameworks

final localStorageProvider = Provider<LocalStorage>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);

  return LocalStorageImpl(sharedPreferences);
});

final sharedPreferencesProvider = Provider<SharedPreferencesAsync>((ref) {
  return SharedPreferencesAsync();
});

// repositories

final workoutRepoProvider = Provider<WorkoutRepo>((ref) {
  final appPreferencesRepo = ref.read(appPreferencesRepoProvider);
  return WorkoutRepoImpl(appPreferencesRepo);
});

final appPreferencesRepoProvider = Provider<AppPreferencesRepo>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return AppPreferencesRepoImpl(localStorage);
});

// view models

final homeViewModel = Provider((ref) {
  final workoutRepo = ref.read(workoutRepoProvider);

  return HomeViewModel(workoutRepo);
});

Provider<WorkoutSessionViewModel> workoutSessionViewModel(
  WorkoutSessionInput input,
) => Provider((ref) {
  final workoutRepo = ref.read(workoutRepoProvider);

  return WorkoutSessionViewModel(input, workoutRepo);
});
