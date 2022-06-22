import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:web_admin/app_router.dart';
import 'package:web_admin/providers/user_data_provider.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  Future<void> _doLogoutAsync({
    required UserDataProvider userDataProvider,
    required VoidCallback onSuccess,
  }) async {
    await userDataProvider.clearUserDataAsync();

    onSuccess.call();
  }

  void _onLogoutSuccess(BuildContext context) {
    GoRouter.of(context).go(RouteUri.login);
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // Clear local user data and redirect to login screen.
      await (_doLogoutAsync(
        userDataProvider: context.read<UserDataProvider>(),
        onSuccess: () => _onLogoutSuccess(context),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
