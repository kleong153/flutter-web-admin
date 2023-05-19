import 'package:flutter/material.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_button_theme.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

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
            lang.buttons(2),
            style: themeData.textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardHeader(
                    title: 'Elevated Button',
                  ),
                  CardBody(
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: kDefaultPadding * 2.0,
                      runSpacing: kDefaultPadding * 2.0,
                      children: [
                        _elevatedButtonItem(context, 'Primary', appButtonTheme.primaryElevated),
                        _elevatedButtonItem(context, 'Secondary', appButtonTheme.secondaryElevated),
                        _elevatedButtonItem(context, 'Error', appButtonTheme.errorElevated),
                        _elevatedButtonItem(context, 'Success', appButtonTheme.successElevated),
                        _elevatedButtonItem(context, 'Info', appButtonTheme.infoElevated),
                        _elevatedButtonItem(context, 'Warning', appButtonTheme.warningElevated),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardHeader(
                    title: 'Outlined Button',
                  ),
                  CardBody(
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: kDefaultPadding * 2.0,
                      runSpacing: kDefaultPadding * 2.0,
                      children: [
                        _outlinedButtonItem(context, 'Primary', appButtonTheme.primaryOutlined),
                        _outlinedButtonItem(context, 'Secondary', appButtonTheme.secondaryOutlined),
                        _outlinedButtonItem(context, 'Error', appButtonTheme.errorOutlined),
                        _outlinedButtonItem(context, 'Success', appButtonTheme.successOutlined),
                        _outlinedButtonItem(context, 'Info', appButtonTheme.infoOutlined),
                        _outlinedButtonItem(context, 'Warning', appButtonTheme.warningOutlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardHeader(
                    title: 'Text Button',
                  ),
                  CardBody(
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: kDefaultPadding * 2.0,
                      runSpacing: kDefaultPadding * 2.0,
                      children: [
                        _textButtonItem(context, 'Primary', appButtonTheme.primaryText),
                        _textButtonItem(context, 'Secondary', appButtonTheme.secondaryText),
                        _textButtonItem(context, 'Error', appButtonTheme.errorText),
                        _textButtonItem(context, 'Success', appButtonTheme.successText),
                        _textButtonItem(context, 'Info', appButtonTheme.infoText),
                        _textButtonItem(context, 'Warning', appButtonTheme.warningText),
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

  Widget _elevatedButtonItem(BuildContext context, String text, ButtonStyle buttonStyle) {
    return _buttonItemLayout([
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: Text(text),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: kTextPadding),
              child: Icon(Icons.account_circle_rounded),
            ),
            Text('with icon'),
          ],
        ),
      ),
      ElevatedButton(
        onPressed: null,
        style: buttonStyle,
        child: const Text('Disabled'),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
        ),
        child: const Text('Flat Border'),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        child: const Text('Stadium Border'),
      ),
      ElevatedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(
            const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
        child: const Text('Beveled Rectangle Border'),
      ),
    ]);
  }

  Widget _outlinedButtonItem(BuildContext context, String text, ButtonStyle buttonStyle) {
    return _buttonItemLayout([
      OutlinedButton(
        onPressed: () {},
        style: buttonStyle,
        child: Text(text),
      ),
      OutlinedButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: kTextPadding),
              child: Icon(Icons.account_circle_rounded),
            ),
            Text('with icon'),
          ],
        ),
      ),
      OutlinedButton(
        onPressed: null,
        style: buttonStyle,
        child: const Text('Disabled'),
      ),
      OutlinedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
        ),
        child: const Text('Flat Border'),
      ),
      OutlinedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        child: const Text('Stadium Border'),
      ),
      OutlinedButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(
            const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
        child: const Text('Beveled Rectangle Border'),
      ),
    ]);
  }

  Widget _textButtonItem(BuildContext context, String text, ButtonStyle buttonStyle) {
    return _buttonItemLayout([
      TextButton(
        onPressed: () {},
        style: buttonStyle,
        child: Text(text),
      ),
      TextButton(
        onPressed: () {},
        style: buttonStyle,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: kTextPadding),
              child: Icon(Icons.account_circle_rounded),
            ),
            Text('with icon'),
          ],
        ),
      ),
      TextButton(
        onPressed: null,
        style: buttonStyle,
        child: const Text('Disabled'),
      ),
      TextButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
        ),
        child: const Text('Flat Border'),
      ),
      TextButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        child: const Text('Stadium Border'),
      ),
      TextButton(
        onPressed: () {},
        style: buttonStyle.copyWith(
          shape: MaterialStateProperty.all(
            const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
        child: const Text('Beveled Rectangle Border'),
      ),
    ]);
  }

  Widget _buttonItemLayout(List<Widget> buttons) {
    const buttonWidth = 220.0;
    final List<Widget> widgets = [];

    for (var i = 0; i < buttons.length; i++) {
      if (i < buttons.length) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
          child: SizedBox(
            width: buttonWidth,
            child: buttons[i],
          ),
        ));
      } else {
        widgets.add(buttons[i]);
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }
}
