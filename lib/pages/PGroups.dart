import 'package:flutter/material.dart';
import '../util/UColors.dart';
import '../widgets/WAppBar.dart';

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
      appBar: WAppBar(data: widget.data, backArrow: true,),
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
        backgroundColor: cWhite,
        child: Icon(
            Icons.add,
            color: cBlack
        ),
      ),
    );
  }
}
