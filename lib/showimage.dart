import 'dart:convert';
import 'package:widget_zoom/widget_zoom.dart';
import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  final img;
  const ShowImage({super.key, this.img});

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return WidgetZoom(
        maxScaleFullscreen: 10,
        heroAnimationTag: 'tag',
        zoomWidget: Image.memory(base64Decode(widget.img)));
  }
}
