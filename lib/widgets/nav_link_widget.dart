import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavLinkWidget extends StatelessWidget {
  final Icon icon;
  final String label;
  final bool isActive;

  const NavLinkWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        if (isActive) return;
      },
      icon: icon,
      label: Text(label),
      style: TextButton.styleFrom(
        primary: isActive
            ? Theme.of(context).textTheme.button!.color
            : Theme.of(context).primaryColor,
        padding: EdgeInsets.all(8.r),
        backgroundColor:
            isActive ? Theme.of(context).primaryColor.withOpacity(0.75) : null,
      ),
    );
  }
}
