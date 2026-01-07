import 'package:flutter/material.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPTopIdentity extends StatelessWidget {
  final String name;
  final String role;

  const TPTopIdentity({super.key, required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: TextStyles.font14Bold()),
        verticalSpace(4),
        Text(role, style: TextStyles.font14Medium()),
      ],
    );
  }
}
