import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:web_admin/app_router.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/theme/theme_extensions/app_button_theme.dart';
import 'package:web_admin/utils/app_focus_helper.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';

class CrudDetailScreen extends StatefulWidget {
  final String id;

  const CrudDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<CrudDetailScreen> createState() => _CrudDetailScreenState();
}

class _CrudDetailScreenState extends State<CrudDetailScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _formData = FormData();

  Future<bool>? _future;

  Future<bool> _getDataAsync() async {
    if (widget.id.isNotEmpty) {
      await Future.delayed(const Duration(seconds: 1), () {
        _formData.id = widget.id;
        _formData.item = 'Item name';
        _formData.price = '1234.99';
      });
    }

    return true;
  }

  void _doSubmit(BuildContext context) {
    AppFocusHelper.instance.requestUnfocus();

    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState!.save();

      final lang = Lang.of(context);

      final dialog = AwesomeDialog(
        context: context,
        dialogType: DialogType.question,
        title: lang.confirmSubmitRecord,
        width: kDialogWidth,
        btnOkText: lang.yes,
        btnOkOnPress: () {
          final d = AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            title: lang.recordSubmittedSuccessfully,
            width: kDialogWidth,
            btnOkText: 'OK',
            btnOkOnPress: () => GoRouter.of(context).go(RouteUri.crud),
          );

          d.show();
        },
        btnCancelText: lang.cancel,
        btnCancelOnPress: () {},
      );

      dialog.show();
    }
  }

  void _doDelete(BuildContext context) {
    AppFocusHelper.instance.requestUnfocus();

    final lang = Lang.of(context);

    final dialog = AwesomeDialog(
      context: context,
      dialogType: DialogType.infoReverse,
      title: lang.confirmDeleteRecord,
      width: kDialogWidth,
      btnOkText: lang.yes,
      btnOkOnPress: () {
        final d = AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          title: lang.recordDeletedSuccessfully,
          width: kDialogWidth,
          btnOkText: 'OK',
          btnOkOnPress: () => GoRouter.of(context).go(RouteUri.crud),
        );

        d.show();
      },
      btnCancelText: lang.cancel,
      btnCancelOnPress: () {},
    );

    dialog.show();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);

    final pageTitle = 'CRUD - ${widget.id.isEmpty ? lang.crudNew : lang.crudDetail}';

    return PortalMasterLayout(
      selectedMenuUri: RouteUri.crud,
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          Text(
            pageTitle,
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
                    title: pageTitle,
                  ),
                  CardBody(
                    child: FutureBuilder<bool>(
                      initialData: null,
                      future: (_future ??= _getDataAsync()),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          if (snapshot.hasData && snapshot.data!) {
                            return _content(context);
                          }
                        } else if (snapshot.hasData && snapshot.data!) {
                          return _content(context);
                        }

                        return Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                          child: SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: CircularProgressIndicator(
                              backgroundColor: themeData.scaffoldBackgroundColor,
                            ),
                          ),
                        );
                      },
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

  Widget _content(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);

    return FormBuilder(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 1.5),
            child: FormBuilderTextField(
              name: 'item',
              decoration: const InputDecoration(
                labelText: 'Item',
                hintText: 'Item',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              initialValue: _formData.item,
              validator: FormBuilderValidators.required(),
              onSaved: (value) => (_formData.item = value ?? ''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 2.0),
            child: FormBuilderTextField(
              name: 'price',
              decoration: const InputDecoration(
                labelText: 'Price',
                hintText: 'Price',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              initialValue: _formData.price,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: FormBuilderValidators.required(),
              onSaved: (value) => (_formData.price = value ?? ''),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.0,
                child: ElevatedButton(
                  style: themeData.extension<AppButtonTheme>()!.secondaryElevated,
                  onPressed: () => GoRouter.of(context).go(RouteUri.crud),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding * 0.5),
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: (themeData.textTheme.labelLarge!.fontSize! + 4.0),
                        ),
                      ),
                      Text(lang.crudBack),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Visibility(
                visible: widget.id.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: SizedBox(
                    height: 40.0,
                    child: ElevatedButton(
                      style: themeData.extension<AppButtonTheme>()!.errorElevated,
                      onPressed: () => _doDelete(context),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: kDefaultPadding * 0.5),
                            child: Icon(
                              Icons.delete_rounded,
                              size: (themeData.textTheme.labelLarge!.fontSize! + 4.0),
                            ),
                          ),
                          Text(lang.crudDelete),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
                child: ElevatedButton(
                  style: themeData.extension<AppButtonTheme>()!.successElevated,
                  onPressed: () => _doSubmit(context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding * 0.5),
                        child: Icon(
                          Icons.check_circle_outline_rounded,
                          size: (themeData.textTheme.labelLarge!.fontSize! + 4.0),
                        ),
                      ),
                      Text(lang.submit),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FormData {
  String id = '';
  String item = '';
  String price = '';
}
