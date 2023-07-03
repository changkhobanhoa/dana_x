import 'package:dana_x/common/global_colors.dart';
import 'package:flutter/material.dart';

import '../common/global_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// MARK: - Initials;
  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontStyle;
  final double? sizeBar;
  const CustomAppBar({
    Key? key,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.bottom,
    this.automaticallyImplyLeading = true,
    this.backgroundColor = GlobalColors.bgApp,
    this.textColor = GlobalColors.bgColor,
    this.fontStyle, this.sizeBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(
        title ?? '',
        style: GlobalStyles.titilliumRegular(context).copyWith(
          fontSize: fontStyle ?? 16,
          color: textColor,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
      actions: actions ?? [],
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>   Size(double.maxFinite, sizeBar ??70);
}
