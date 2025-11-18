import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:performance_anaylsis_final/data/cubits/main_cubit_states.dart';
import 'package:performance_anaylsis_final/screens/home_screen.dart';
import 'package:performance_anaylsis_final/screens/iq_analysis_screen.dart';
import 'package:performance_anaylsis_final/screens/profile_screen.dart';
import 'package:performance_anaylsis_final/screens/statistic_screen.dart';

class MainCubit extends Cubit<MainCubitStates> {
  MainCubit() : super(InitialMainCubitState());

  int currentPageIndex = 0;
  List pages = [
    HomeScreen(),
    StatisticScreen(),
    IQAnalysisScreen(),
    ProfileScreen(),
  ];

  void toglePages(int index) {
    currentPageIndex = index;
    emit(ChangePages());
  }
}
