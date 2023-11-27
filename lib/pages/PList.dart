import 'package:flutter/material.dart';
import '../util/UColors.dart';
import '../widgets/WAppBar.dart';

class PLists extends StatefulWidget {
  final List content;
  final String title;

  PLists({
    Key? key,
    required this.content,
    required this.title
  }) : super(key: key);

  @override
  State<PLists> createState() => _PListsState();
}

class _PListsState extends State<PLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: WAppBar(title: widget.title, backArrow: true,),
      body: Text(widget.content[0]["text"]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        backgroundColor: cWhite,
        child: Icon(
            Icons.add,
            color: cBlack
        ),
      ),
    );
  }
}
