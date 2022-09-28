import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScrollAndExpandedVertical extends StatelessWidget {
  ScrollAndExpandedVertical({
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
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Center(
                child: Column(
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
