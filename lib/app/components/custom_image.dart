import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  final String imageUrl;

  const CustomImageNetwork({Key key, this.imageUrl}) : super(key: key);

  Widget build(BuildContext context) {
    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
      (int viewId) => ImageElement()..src = imageUrl,
    );
    return HtmlElementView(
      viewType: imageUrl,
    );
  }
}
