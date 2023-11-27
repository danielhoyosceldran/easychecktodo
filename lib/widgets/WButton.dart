import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WButton extends StatefulWidget {
  final String svgIconLocation;
  double? height;
  double? width;
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;

  WButton({
    Key? key,
    required this.svgIconLocation,
    this.height = 25,
    this.width = 25,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingRight = 0,
    this.paddingLeft = 0,
  }) : super(key: key);

  @override
  State<WButton> createState() => _WButtonState();
}

class _WButtonState extends State<WButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: EdgeInsets.only(
            right: widget.paddingRight!,
            top: widget.paddingTop!,
            bottom: widget.paddingBottom!,
            left: widget.paddingLeft!
        ),
        child: SvgPicture.asset(widget.svgIconLocation, height: widget.height),
      ),
    );
  }
}
