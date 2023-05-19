// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:web_admin/constants/dimens.dart';
import 'package:web_admin/generated/l10n.dart';
import 'package:web_admin/views/widgets/card_elements.dart';
import 'package:web_admin/views/widgets/portal_master_layout/portal_master_layout.dart';

class IFrameDemoScreen extends StatefulWidget {
  const IFrameDemoScreen({Key? key}) : super(key: key);

  @override
  State<IFrameDemoScreen> createState() => _IFrameDemoScreenState();
}

class _IFrameDemoScreenState extends State<IFrameDemoScreen> {
  final _isDrawerOpenedVN = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _isDrawerOpenedVN.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    final themeData = Theme.of(context);

    double iframeHeight = 315.0;
    double iframeWidth = 560.0;

    return PortalMasterLayout(
      onDrawerChanged: (isOpened) => _isDrawerOpenedVN.value = isOpened,
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          Text(
            lang.iframeDemo,
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
                    title: lang.iframeDemo,
                  ),
                  CardBody(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: kDefaultPadding),
                          child: Text(
                            '${lang.example} 1',
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        _pointerInterceptedIFrame('https://www.youtube.com/embed/rCugckXUC8M/', iframeHeight, iframeWidth),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding * 3.0,
                            bottom: kDefaultPadding,
                          ),
                          child: Text(
                            '${lang.example} 2',
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        _pointerInterceptedIFrame('https://www.lipsum.com/', iframeHeight, iframeWidth),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: kDefaultPadding * 3.0,
                            bottom: kDefaultPadding,
                          ),
                          child: Text(
                            '${lang.example} 3',
                            style: themeData.textTheme.titleMedium,
                          ),
                        ),
                        _pointerInterceptedIFrame('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50704.09814353644!2d-122.11637223349575!3d37.413329910198634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb7495bec0189%3A0x7c17d44a466baf9b!2sMountain%20View%2C%20CA%2C%20USA!5e0!3m2!1sen!2smy!4v1655050103494!5m2!1sen!2smy', iframeHeight, iframeWidth),
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

  Widget _pointerInterceptedIFrame(String url, double iframeHeight, double iframeWidth) {
    return Stack(
      children: [
        SizedBox(
          height: iframeHeight,
          width: iframeWidth,
          child: HtmlIFrame(
            url: url,
            height: iframeHeight.toInt(),
            width: iframeWidth.toInt(),
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: _isDrawerOpenedVN,
          builder: (context, isOpened, child) {
            return Positioned(
              top: (isOpened ? 0.0 : iframeHeight),
              left: 0.0,
              child: PointerInterceptor(
                intercepting: true,
                child: Container(
                  height: iframeHeight,
                  width: iframeWidth,
                  color: Colors.transparent,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class HtmlIFrame extends StatelessWidget {
  final String url;
  final int height;
  final int width;

  const HtmlIFrame({
    Key? key,
    required this.url,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iframe = html.IFrameElement();

    iframe.height = '$height';
    iframe.width = '$width';
    iframe.src = url;
    iframe.style.border = 'none';
    iframe.allowFullscreen = false;

    final viewType = 'iframeElement_$url';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewType,
      (int viewId) => iframe,
    );

    return HtmlElementView(
      key: ValueKey(viewType),
      viewType: viewType,
    );
  }
}
