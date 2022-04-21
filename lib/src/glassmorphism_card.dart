import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphismCard extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Color? titleColor;
  final Color borderColor;
  final double borderSize;
  final Widget title;
  final Widget? body;
  final Alignment alignTitle;
  final double opacity;
  final double circular;
  final double blur;
  GlassmorphismCard(
      {this.width = 300,
      this.height = 250,
      this.opacity = 0.4,
      this.circular = 20,
      this.blur = 5,
      this.backgroundColor = Colors.white,
      this.borderColor = Colors.white,
      this.borderSize = 1,
      this.titleColor,
      required this.title,
      this.body,
      this.alignTitle = Alignment.bottomLeft});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(circular),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur * 2),
            child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(opacity),
                  borderRadius: BorderRadius.circular(circular),
                ),
                child: null),
          ),
        ),
        Container(
          width: width - 5,
          height: height - 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(circular),
            border: Border(
              bottom: BorderSide(width: borderSize, color: borderColor),
              top: BorderSide(width: borderSize, color: borderColor),
              left: BorderSide(width: borderSize, color: borderColor),
              right: BorderSide(width: borderSize, color: borderColor),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: titleColor != null
                      ? titleColor!.withOpacity(opacity)
                      : null,
                  child: Align(alignment: alignTitle, child: title),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: body ?? null,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
