import 'package:flutter/material.dart';
import 'package:mf_sap/mf_sap.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SapRoutes {
  static SapScreen getSapScreen(BuildContext context) {
    final controller = WebViewController()
      ..addJavaScriptChannel('appChannel',
          onMessageReceived: (JavaScriptMessage message) {
        debugPrint('Message received: ${message.message}');
      })
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://db5d-181-234-149-244.ngrok-free.app'));
    final SapConfig sapConfig = SapConfig(
      controller,
      () => controller.runJavaScript("showData('Pragma Flutter')"),
    );
    return SapScreen(sapConfig);
  }
}
