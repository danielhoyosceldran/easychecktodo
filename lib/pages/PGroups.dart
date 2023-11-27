import 'package:flutter/material.dart';
import '../util/UColors.dart';
import '../widgets/WAppBar.dart';
import '../widgets/WListItem.dart';

class PGroups extends StatefulWidget {
  final List content;
  final String title;

  PGroups({
    Key? key,
    required this.content,
    required this.title
  }) : super(key: key);

  @override
  State<PGroups> createState() => _PGroupsState();
}

class _PGroupsState extends State<PGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: WAppBar(title: widget.title),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Text("hola"),
          const Spacer(),
        ],
      ),
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
