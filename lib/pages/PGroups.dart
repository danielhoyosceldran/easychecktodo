import 'package:flutter/material.dart';
import '../util/UColors.dart';

class PGroups extends StatefulWidget {
  final Map data;

  const PGroups({
    Key? key,
    required this.data
  }) : super(key: key);

  @override
  State<PGroups> createState() => _PGroupsState();
}

class _PGroupsState extends State<PGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        title: Text(widget.data["title"]),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Text("data"),
          const Spacer(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        backgroundColor: cGreen,
        tooltip: 'Add task file.',
        child: const Icon(Icons.add),
      ),
    );
  }
}
