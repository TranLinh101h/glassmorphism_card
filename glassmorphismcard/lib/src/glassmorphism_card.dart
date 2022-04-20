import 'package:flutter/material.dart';

class GlassmorphismCard extends StatefulWidget {
  final double width;
  final double height;
  final Color color_Header;
  final Color color_Body;
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final Widget? body;

  GlassmorphismCard(
      {this.width = 350,
      this.height = 150,
      this.color_Header = Colors.white,
      this.color_Body = Colors.cyan,
      this.leading,
      this.title,
      this.trailing,
      this.body});

  @override
  GlassmorphismCardState createState() => GlassmorphismCardState();
}

class GlassmorphismCardState extends State<GlassmorphismCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Card(
          color: widget.color_Header.withOpacity(0.5),
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.leading,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.title,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.trailing,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: widget.width,
                  height: widget.height - 50,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: widget.color_Body.withOpacity(0.7),
                  child: widget.body,
                ),
              )),
            ],
          )),
    );
  }
}
