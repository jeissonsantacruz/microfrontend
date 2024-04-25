import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SapConfig {
  SapConfig(this.webViewController, this.authenticationSap);

  final WebViewController webViewController;
  final VoidCallback authenticationSap;
}
