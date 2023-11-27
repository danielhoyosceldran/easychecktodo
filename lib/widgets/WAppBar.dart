import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'WButton.dart';
import '../util/StandardSize.dart';

class WAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Map data;
  bool? backArrow;

  WAppBar({
    Key? key,
    required this.data,
    this.backArrow = false
  }) : super(key: key);

  @override
  State<WAppBar> createState() => _WAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}

class _WAppBarState extends State<WAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 38, left: 20, right: 30),
        child: Row(
          children: [
            if (widget.backArrow!) WButton(svgIconLocation: "assets/imgs/Arrow.svg", height: 18, paddingRight: 8, paddingTop: 2),
            Text(
              widget.data["title"],
              style: GoogleFonts.roboto(fontSize: titleFontSize, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            WButton(svgIconLocation: "assets/imgs/Menu.svg", paddingTop: 4)
          ],
        ),
      ),
    );
  }
}
