import 'package:flutter/material.dart';

class PurplePartStructure extends StatelessWidget {
  const PurplePartStructure({super.key, this.widget});
   final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Theme.of(context).primaryColor,
      child: widget,

    );
  }
}
