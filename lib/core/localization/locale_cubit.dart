import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/material.dart';

class LocaleCubit extends HydratedCubit<Locale> {
  LocaleCubit() : super(const Locale('ar')); // اللغة الافتراضية

  void setLocale(Locale locale) {
    emit(locale);
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    try {
      final languageCode = json['languageCode'] as String?;
      final countryCode = json['countryCode'] as String?;
      if (languageCode == null) return const Locale('ar');
      return Locale(languageCode, countryCode);
    } catch (_) {
      return const Locale('ar');
    }
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {
      'languageCode': state.languageCode,
      'countryCode': state.countryCode,
    };
  }
}
