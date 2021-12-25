import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillWidget extends StatelessWidget {
  final double value;
  final String label;

  const SkillWidget({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularProgressIndicator(
          value: value,
          backgroundColor: Theme.of(context).primaryColorDark,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 12.r),
        Text(label, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
