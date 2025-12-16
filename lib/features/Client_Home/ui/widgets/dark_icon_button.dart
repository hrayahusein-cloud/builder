import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sallihli/core/theme/theme_cubit.dart';
import 'package:sallihli/core/widgets/circle_icon_button.dart';

class DarkIconButton extends StatelessWidget {
  const DarkIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleIconButton(
      icon: Icons.dark_mode,
    
      onTap: () {
        context.read<ThemeCubit>().toggleTheme();
      },
    );
  }
}
