import 'package:flutter/material.dart';

double _getAppBarTitleWidth(
  double screenWidth,
  double leadingWidth,
  double tailWidth,
) {
  return screenWidth - leadingWidth - tailWidth;
}

class TopBar extends StatelessWidget with PreferredSizeWidget {
  TopBar({
    Key? key,
    this.leadingChildren,
    this.tailChildren,
    this.title,
    this.leadingWidth = 110,
    this.tailWidth = 30,
  }) : super(key: key);

  final List<Widget>? leadingChildren;
  final List<Widget>? tailChildren;
  final String? title;
  final double leadingWidth;
  final double tailWidth;

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final _screenWidth = MediaQuery.of(context).size.width;

    // Get title size
    final _titleWidth =
        _getAppBarTitleWidth(_screenWidth, leadingWidth, tailWidth);

    final _offsetToRight = leadingWidth - tailWidth;

    return AppBar(
      title: Row(
        children: [
          if (leadingChildren != null) ...leadingChildren!,
          Expanded(
            child: Container(
              color: Colors.green,
              width: _titleWidth,
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: title != null
                  ? Container(
                      padding: EdgeInsets.only(right: _offsetToRight),
                      color: Colors.deepPurpleAccent,
                      child: Center(
                        child: Text(title!),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          if (tailChildren != null) ...tailChildren!,
        ],
      ),
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
