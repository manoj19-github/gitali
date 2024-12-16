import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.dark);
  void toggleTheme(ThemeMode _themeMode) {
    emit(_themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // TODO: implement toJson
    // return {'value': state};
  }
}
