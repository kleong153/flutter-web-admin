import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  final Color hoverColor;
  final Widget Function(BuildContext context, bool isMouseHovered, Widget? child)? builder;
  final Widget? child;

  const HoverContainer({
    Key? key,
    required this.hoverColor,
    this.builder,
    required this.child,
  }) : super(key: key);

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  var _isMouseHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (event) {
        setState(() => _isMouseHovered = false);
      },
      onHover: (event) {
        setState(() => _isMouseHovered = true);
      },
      child: Container(
        color: (_isMouseHovered ? widget.hoverColor : Colors.transparent),
        child: _child(context),
      ),
    );
  }

  Widget _child(BuildContext context) {
    if (widget.builder != null) {
      return widget.builder!.call(context, _isMouseHovered, widget.child);
    }

    return widget.child ?? const SizedBox.shrink();
  }
}
