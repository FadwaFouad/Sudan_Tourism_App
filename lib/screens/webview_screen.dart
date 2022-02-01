import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sudan_tour_app/utils/constants.dart' as cons;
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  static const ROUTE_NAME = '/webview_screen';

  @override
  _WebviewScreenState createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final url = ModalRoute.of(context).settings.arguments as String;
    final Completer<WebViewController> _controller =
        Completer<WebViewController>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cons.COLOR_WHITE,
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (value) {
              setState(() {
                _isLoading = true;
              });
            },
          ),
          if (!_isLoading)
            Center(
              child: CircularProgressIndicator(),
            )
        ],
      ),
    );
  }
}
