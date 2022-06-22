import 'package:flutter/material.dart';
import 'package:web_admin/constants/dimens.dart';

class CardHeader extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Color? backgroundColor;
  final bool showDivider;
  final EdgeInsets padding;

  const CardHeader({
    Key? key,
    required this.title,
    this.titleColor,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(kDefaultPadding),
    this.showDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: titleColor,
                  ),
            ),
          ),
          Visibility(
            visible: showDivider,
            child: const Divider(
              height: 1.0,
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}

class CardBody extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const CardBody({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(kDefaultPadding),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
