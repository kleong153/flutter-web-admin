import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:web_admin/app_router.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/providers/user_data_provider.dart';
import 'package:web_admin/theme/theme_extensions/app_button_theme.dart';
import 'package:web_admin/theme/theme_extensions/app_color_scheme.dart';
import 'package:web_admin/utils/app_focus_helper.dart';
import 'package:web_admin/views/widgets/public_master_layout/public_master_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _formData = FormData();

  var _isFormLoading = false;

  Future<void> _doLoginAsync({
    required UserDataProvider userDataProvider,
    required VoidCallback onSuccess,
    required void Function(String message) onError,
  }) async {
    AppFocusHelper.instance.requestUnfocus();

    if (_formKey.currentState?.validate() ?? false) {
      // Validation passed.
      _formKey.currentState!.save();

      setState(() => _isFormLoading = true);

      Future.delayed(const Duration(seconds: 1), () async {
        if (_formData.username != 'admin' || _formData.password != 'admin') {
          onError.call('Invalid username or password.');
        } else {
          await userDataProvider.setUserDataAsync(
            username: 'Admin ABC',
            userProfileImageUrl: 'https://picsum.photos/id/1005/300/300',
          );

          onSuccess.call();
        }

        setState(() => _isFormLoading = false);
      });
    }
  }

  void _onLoginSuccess(BuildContext context) {
    GoRouter.of(context).go(RouteUri.home);
  }

  void _onLoginError(BuildContext context, String message) {
    final dialog = AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      desc: message,
      width: kDialogWidth,
      btnOkText: 'OK',
      btnOkOnPress: () {},
    );

    dialog.show();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);

    return PublicMasterLayout(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(top: kDefaultPadding * 5.0),
            constraints: const BoxConstraints(maxWidth: 400.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Image.asset(
                        'assets/images/app_logo.png',
                        height: 80.0,
                      ),
                    ),
                    Text(
                      lang.appTitle,
                      style: themeData.textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                      child: Text(
                        lang.adminPortalLogin,
                        style: themeData.textTheme.titleMedium,
                      ),
                    ),
                    FormBuilder(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: kDefaultPadding * 1.5),
                            child: FormBuilderTextField(
                              name: 'username',
                              decoration: InputDecoration(
                                labelText: lang.username,
                                hintText: lang.username,
                                helperText: '* Demo username: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              validator: FormBuilderValidators.required(),
                              onSaved: (value) => (_formData.username = value ?? ''),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                            child: FormBuilderTextField(
                              name: 'password',
                              decoration: InputDecoration(
                                labelText: lang.password,
                                hintText: lang.password,
                                helperText: '* Demo password: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              obscureText: true,
                              validator: FormBuilderValidators.required(),
                              onSaved: (value) => (_formData.password = value ?? ''),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: kDefaultPadding),
                            child: SizedBox(
                              height: 40.0,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: themeData.extension<AppButtonTheme>()!.primaryElevated,
                                onPressed: (_isFormLoading
                                    ? null
                                    : () => _doLoginAsync(
                                          userDataProvider: context.read<UserDataProvider>(),
                                          onSuccess: () => _onLoginSuccess(context),
                                          onError: (message) => _onLoginError(context, message),
                                        )),
                                child: Text(lang.login),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                            width: double.infinity,
                            child: TextButton(
                              style: themeData.extension<AppButtonTheme>()!.secondaryText,
                              onPressed: () => GoRouter.of(context).go(RouteUri.register),
                              child: RichText(
                                text: TextSpan(
                                  text: '${lang.dontHaveAnAccount} ',
                                  style: TextStyle(
                                    color: themeData.colorScheme.onSurface,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: lang.registerNow,
                                      style: TextStyle(
                                        color: themeData.extension<AppColorScheme>()!.hyperlink,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FormData {
  String username = '';
  String password = '';
}
