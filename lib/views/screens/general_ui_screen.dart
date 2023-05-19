import 'package:flutter/material.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/hover_container.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';
import 'package:web_admin/views/widgets/text_with_copy_button.dart';

class GeneralUiScreen extends StatelessWidget {
  const GeneralUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);
    final appColorScheme = themeData.extension<AppColorScheme>()!;

    return PortalMasterLayout(
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          Text(
            lang.generalUi,
            style: themeData.textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding,
              bottom: kDefaultPadding * 0.5,
            ),
            child: Text(
              'Cards',
              style: themeData.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    SizedBox(
                      width: ((constraints.maxWidth * 0.5) - (kDefaultPadding * 0.5)),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CardHeader(title: 'Card Header'),
                            CardBody(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Card Body'),
                                  const SizedBox(height: kTextPadding),
                                  Text(('${lang.loremIpsum} ') * 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    SizedBox(
                      width: ((constraints.maxWidth * 0.5) - (kDefaultPadding * 0.5)),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardHeader(
                              title: 'Card Header With Color',
                              backgroundColor: themeData.colorScheme.primary,
                              titleColor: themeData.colorScheme.onPrimary,
                              showDivider: false,
                            ),
                            CardBody(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Card Body'),
                                  const SizedBox(height: kTextPadding),
                                  Text(('${lang.loremIpsum} ') * 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
            child: Text(
              'Progress / Loading Indicators',
              style: themeData.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _linearProgressIndicator(context, 0.3, appColorScheme.primary, true),
                        _linearProgressIndicator(context, 0.5, appColorScheme.secondary, true),
                        _linearProgressIndicator(context, 0.8, appColorScheme.error, true),
                        _linearProgressIndicator(context, 0.6, appColorScheme.success, true),
                        _linearProgressIndicator(context, 0.4, appColorScheme.info, true),
                        _linearProgressIndicator(context, 0.7, appColorScheme.warning, false),
                        Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding * 1.5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _circularProgressIndicator(context, appColorScheme.primary, true),
                              _circularProgressIndicator(context, appColorScheme.secondary, true),
                              _circularProgressIndicator(context, appColorScheme.error, true),
                              _circularProgressIndicator(context, appColorScheme.success, true),
                              _circularProgressIndicator(context, appColorScheme.info, true),
                              _circularProgressIndicator(context, appColorScheme.warning, false),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
            child: Text(
              'Chips',
              style: themeData.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: kDefaultPadding,
                          runSpacing: kDefaultPadding,
                          children: [
                            _chip('A', 'Aaron', themeData.scaffoldBackgroundColor, appColorScheme.primary, themeData.colorScheme.onSurface),
                            _chip('B', 'Bob', themeData.scaffoldBackgroundColor, appColorScheme.secondary, themeData.colorScheme.onSurface),
                            _chip('C', 'Connor', themeData.scaffoldBackgroundColor, appColorScheme.error, themeData.colorScheme.onSurface),
                            _chip('D', 'Darren', themeData.scaffoldBackgroundColor, appColorScheme.success, themeData.colorScheme.onSurface),
                            _chip('E', 'Evan', themeData.scaffoldBackgroundColor, appColorScheme.info, themeData.colorScheme.onSurface),
                            _chip('F', 'Finn', themeData.scaffoldBackgroundColor, appColorScheme.warning, themeData.colorScheme.onSurface),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: kDefaultPadding,
                          runSpacing: kDefaultPadding,
                          children: [
                            _chip('A', 'Aaron', appColorScheme.primary, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                            _chip('B', 'Bob', appColorScheme.secondary, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                            _chip('C', 'Connor', appColorScheme.error, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                            _chip('D', 'Darren', appColorScheme.success, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                            _chip('E', 'Evan', appColorScheme.info, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                            _chip('F', 'Finn', appColorScheme.warning, themeData.scaffoldBackgroundColor, themeData.colorScheme.onPrimary),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
            child: Text(
              'Mouse Cursors',
              style: themeData.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: kDefaultPadding * 1.5),
                          child: Text(
                            'Mouseover text below to preview',
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: kDefaultPadding * 1.5,
                          runSpacing: kDefaultPadding * 1.5,
                          children: [
                            _mouseRegion(context, 'SystemMouseCursors.alias', SystemMouseCursors.alias),
                            _mouseRegion(context, 'SystemMouseCursors.allScroll', SystemMouseCursors.allScroll),
                            _mouseRegion(context, 'SystemMouseCursors.basic', SystemMouseCursors.basic),
                            _mouseRegion(context, 'SystemMouseCursors.cell', SystemMouseCursors.cell),
                            _mouseRegion(context, 'SystemMouseCursors.click', SystemMouseCursors.click),
                            _mouseRegion(context, 'SystemMouseCursors.contextMenu', SystemMouseCursors.contextMenu),
                            _mouseRegion(context, 'SystemMouseCursors.copy', SystemMouseCursors.copy),
                            _mouseRegion(context, 'SystemMouseCursors.disappearing', SystemMouseCursors.disappearing),
                            _mouseRegion(context, 'SystemMouseCursors.forbidden', SystemMouseCursors.forbidden),
                            _mouseRegion(context, 'SystemMouseCursors.grab', SystemMouseCursors.grab),
                            _mouseRegion(context, 'SystemMouseCursors.grabbing', SystemMouseCursors.grabbing),
                            _mouseRegion(context, 'SystemMouseCursors.help', SystemMouseCursors.help),
                            _mouseRegion(context, 'SystemMouseCursors.move', SystemMouseCursors.move),
                            _mouseRegion(context, 'SystemMouseCursors.noDrop', SystemMouseCursors.noDrop),
                            _mouseRegion(context, 'SystemMouseCursors.none', SystemMouseCursors.none),
                            _mouseRegion(context, 'SystemMouseCursors.precise', SystemMouseCursors.precise),
                            _mouseRegion(context, 'SystemMouseCursors.progress', SystemMouseCursors.progress),
                            _mouseRegion(context, 'SystemMouseCursors.resizeColumn', SystemMouseCursors.resizeColumn),
                            _mouseRegion(context, 'SystemMouseCursors.resizeDown', SystemMouseCursors.resizeDown),
                            _mouseRegion(context, 'SystemMouseCursors.resizeDownLeft', SystemMouseCursors.resizeDownLeft),
                            _mouseRegion(context, 'SystemMouseCursors.resizeDownRight', SystemMouseCursors.resizeDownRight),
                            _mouseRegion(context, 'SystemMouseCursors.resizeLeft', SystemMouseCursors.resizeLeft),
                            _mouseRegion(context, 'SystemMouseCursors.resizeLeftRight', SystemMouseCursors.resizeLeftRight),
                            _mouseRegion(context, 'SystemMouseCursors.resizeRight', SystemMouseCursors.resizeRight),
                            _mouseRegion(context, 'SystemMouseCursors.resizeRow', SystemMouseCursors.resizeRow),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUp', SystemMouseCursors.resizeUp),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUpDown', SystemMouseCursors.resizeUpDown),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUpLeft', SystemMouseCursors.resizeUpLeft),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUpLeftDownRight', SystemMouseCursors.resizeUpLeftDownRight),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUpRight', SystemMouseCursors.resizeUpRight),
                            _mouseRegion(context, 'SystemMouseCursors.resizeUpRightDownLeft', SystemMouseCursors.resizeUpRightDownLeft),
                            _mouseRegion(context, 'SystemMouseCursors.text', SystemMouseCursors.text),
                            _mouseRegion(context, 'SystemMouseCursors.verticalText', SystemMouseCursors.verticalText),
                            _mouseRegion(context, 'SystemMouseCursors.wait', SystemMouseCursors.wait),
                            _mouseRegion(context, 'SystemMouseCursors.zoomIn', SystemMouseCursors.zoomIn),
                            _mouseRegion(context, 'SystemMouseCursors.zoomOut', SystemMouseCursors.zoomOut),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mouseRegion(BuildContext context, String text, MouseCursor mouseCursor) {
    return HoverContainer(
      hoverColor: Theme.of(context).scaffoldBackgroundColor,
      child: MouseRegion(
        cursor: mouseCursor,
        child: TextWithCopyButton(
          textWidget: Text(text),
          textToCopy: text,
        ),
      ),
    );
  }

  Widget _circularProgressIndicator(BuildContext context, Color color, bool withRightPadding) {
    final themeData = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(right: (withRightPadding ? kDefaultPadding : 0.0)),
      child: SizedBox(
        height: 30.0,
        width: 30.0,
        child: Theme(
          data: themeData.copyWith(
            colorScheme: themeData.colorScheme.copyWith(primary: color),
          ),
          child: CircularProgressIndicator(
            backgroundColor: themeData.scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }

  Widget _linearProgressIndicator(BuildContext context, double? value, Color color, bool withBottomPadding) {
    final themeData = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(bottom: (withBottomPadding ? kDefaultPadding * 1.5 : 0.0)),
      child: Theme(
        data: themeData.copyWith(
          colorScheme: themeData.colorScheme.copyWith(primary: color),
        ),
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: themeData.scaffoldBackgroundColor,
        ),
      ),
    );
  }

  Widget _chip(String shortName, String longName, Color backgroundColor, Color foregroundColor, Color textColor) {
    return Chip(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 6.0,
      ),
      backgroundColor: backgroundColor,
      avatar: CircleAvatar(
        backgroundColor: foregroundColor,
        child: Text(
          shortName,
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),
      label: Text(
        longName,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
