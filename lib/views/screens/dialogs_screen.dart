import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_button_theme.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';
import 'package:web_admin/views/widgets/url_new_tab_launcher.dart';

class DialogsScreen extends StatelessWidget {
  const DialogsScreen({Key? key}) : super(key: key);

  void _showDialog(BuildContext context, DialogType dialogType) {
    final dialog = AwesomeDialog(
      context: context,
      dialogType: dialogType,
      title: 'Dialog Title',
      desc: 'Dialog body...',
      width: kDialogWidth,
      btnOkOnPress: () {},
      btnCancelOnPress: () {},
    );

    dialog.show();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);
    final appButtonTheme = themeData.extension<AppButtonTheme>()!;

    return PortalMasterLayout(
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          Text(
            lang.dialogs(2),
            style: themeData.textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardHeader(
                    title: lang.dialogs(2),
                  ),
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                          child: UrlNewTabLauncher(
                            displayText: 'awesome_dialog - pub.dev',
                            url: 'https://pub.dev/packages/awesome_dialog',
                            fontSize: 13.0,
                          ),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: kDefaultPadding * 2.0,
                          runSpacing: kDefaultPadding * 2.0,
                          children: [
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.info),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Info'),
                            ),
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.infoReverse),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Info Reversed'),
                            ),
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.warning),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Warning'),
                            ),
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.error),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Error'),
                            ),
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.success),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Success'),
                            ),
                            ElevatedButton(
                              onPressed: () => _showDialog(context, DialogType.question),
                              style: appButtonTheme.primaryElevated,
                              child: const Text('Question'),
                            ),
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
}
