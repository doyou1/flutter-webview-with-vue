import 'package:flutter/material.dart';
import 'package:flutter_webview/test1_dialog.dart';
import 'package:flutter_webview/test2_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewDialog extends StatefulWidget {
  @override
  _WebviewDialogState createState() => _WebviewDialogState();
}

class _WebviewDialogState extends State<WebviewDialog> {
  late final WebViewController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("http://localhost:5173"))
      ..addJavaScriptChannel(
        'WebviewChannel',
        onMessageReceived: (JavaScriptMessage message) {
          switch (message.message) {
            case "dialog1":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Test1Dialog()),
              );
              break;
            case "dialog2":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Test2Dialog()),
              );
              break;
            default:
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message.message)),
                );
              }
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView with Vue'),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
