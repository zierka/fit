import 'package:fit/domain/frameworks/local_storage.dart';
import 'package:fit/domain/frameworks/local_storage_impl.dart';
import 'package:fit/features/home/home_view_model.dart';
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

// view models

final homeViewModel = Provider((ref) {
  final localStorage = ref.read(localStorageProvider);

  return HomeViewModel(localStorage);
});
