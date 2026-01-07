import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/localization/generated/intl/l10n.dart';
import 'package:sallihli/core/routing/routes.dart';
import 'package:sallihli/core/theme/app_theme.dart';
import 'package:sallihli/core/theme/theme_cubit.dart';

import 'core/routing/app_router.dart';
import 'core/localization/locale_cubit.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeCubit()),
          BlocProvider(create: (_) => LocaleCubit()),
        ],
        child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, locale) {
            return BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeMode) {
                return MaterialApp(
                  themeMode: themeMode,
                  theme: AppTheme.light,

                  darkTheme: AppTheme.dark,

                  // 👇 هنا اللغة تجي من الـ LocaleCubit
                  locale: locale,

                  supportedLocales: S.delegate.supportedLocales,
                  debugShowCheckedModeBanner: false,
                  initialRoute: Routes.clientHome,
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  onGenerateRoute: appRouter.generateRoute,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
