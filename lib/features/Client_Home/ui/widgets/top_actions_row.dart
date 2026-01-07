import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sallihli/core/helpers/get_current_locale.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/localization/locale_cubit.dart';
import 'package:sallihli/core/theme/theme_cubit.dart';
import 'package:sallihli/core/widgets/circle_icon_button.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/app_logo_title.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/dark_icon_button.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/notification_icon_button.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/search_icon_button.dart';

class TopActionsRow extends StatefulWidget {
  const TopActionsRow({super.key});

  @override
  State<TopActionsRow> createState() => _TopActionsRowState();
}

class _TopActionsRowState extends State<TopActionsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogoTitle(),
        Spacer(),
        horizontalSpace(16),
        DarkIconButton(),
        horizontalSpace(16),
        CircleIconButton(
          icon: Icons.language,

          onTap: () {
            if (isArabic(context)) {
              context.read<LocaleCubit>().setLocale(const Locale('en'));
            } else {
              context.read<LocaleCubit>().setLocale(const Locale('ar'));
            }
            setState(() {
              print(isArabic(context));
            });
          },
        ),
        horizontalSpace(16),
        SearchIconButton(),
        horizontalSpace(16),
        NotificationIconButton(),
      ],
    );
  }
}
