import 'package:flutter/material.dart';
import 'package:mf_sap/src/domain/sap_config.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SapScreen extends StatelessWidget {
  static String sapRoute = '/sapRoute';
  final SapConfig sapConfig;
  const SapScreen(this.sapConfig, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: sapConfig.webViewController),
      floatingActionButton: ElevatedButton(
        child: const Text(''),
        onPressed: () => sapConfig.authenticationSap.call(),
      ),
    );
  }
}
