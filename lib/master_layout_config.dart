import 'package:flutter/material.dart';
import 'package:web_admin/app_router.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';
import 'package:web_admin/views/widgets/portal_master_layout/sidebar.dart';

final sidebarMenuConfigs = [
  SidebarMenuConfig(
    uri: RouteUri.dashboard,
    icon: Icons.dashboard_rounded,
    title: (context) => Lang.of(context).dashboard,
  ),
  SidebarMenuConfig(
    uri: RouteUri.form,
    icon: Icons.edit_note_rounded,
    title: (context) => Lang.of(context).forms(1),
  ),
  SidebarMenuConfig(
    uri: '',
    icon: Icons.interests_rounded,
    title: (context) => Lang.of(context).uiElements(2),
    children: [
      SidebarChildMenuConfig(
        uri: RouteUri.generalUi,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).generalUi,
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.colors,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).colors(2),
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.text,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).text,
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.buttons,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).buttons(2),
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.dialogs,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).dialogs(2),
      ),
    ],
  ),
  SidebarMenuConfig(
    uri: '',
    icon: Icons.library_books_rounded,
    title: (context) => Lang.of(context).pages(2),
    children: [
      SidebarChildMenuConfig(
        uri: RouteUri.error404,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).error404,
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.login,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).login,
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.register,
        icon: Icons.circle_outlined,
        title: (context) => Lang.of(context).register,
      ),
      SidebarChildMenuConfig(
        uri: RouteUri.crud,
        icon: Icons.circle_outlined,
        title: (context) => 'CRUD',
      ),
    ],
  ),
  SidebarMenuConfig(
    uri: RouteUri.iframe,
    icon: Icons.laptop_windows_rounded,
    title: (context) => Lang.of(context).iframeDemo,
  ),
];

const localeMenuConfigs = [
  LocaleMenuConfig(
    languageCode: 'en',
    name: 'English',
  ),
  LocaleMenuConfig(
    languageCode: 'zh',
    scriptCode: 'Hans',
    name: '中文 (简体)',
  ),
  LocaleMenuConfig(
    languageCode: 'zh',
    scriptCode: 'Hant',
    name: '中文 (繁體)',
  ),
];
