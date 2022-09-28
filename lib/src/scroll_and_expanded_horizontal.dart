import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScrollAndExpandedHorizontal extends StatelessWidget {
  ScrollAndExpandedHorizontal({
    Key? key,
    required this.children,
    this.isSafeArea = false,
  }) : super(key: key);

  List<Widget> children;
  bool? isSafeArea;

  @override
  Widget build(BuildContext context) {
    return isSafeArea!
        ? SafeArea(
            child: _expandedAndScroll(),
          )
        : _expandedAndScroll();
  }

  _expandedAndScroll() {
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraint.maxWidth),
            child: IntrinsicWidth(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
