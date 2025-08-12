import 'package:fit/di/providers.dart';
import 'package:fit/presentation/widgets/workout_plan_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final _homeViewModel = ref.read(homeViewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('F I T')),
      body: WorkoutPlanSummaryWidget(
        plan: _homeViewModel.plan,
        history: _homeViewModel.history,
      ),
    );
  }
}
