import 'package:flutter/material.dart';

import '../../../configs/constants.dart';

class ContainerX extends StatelessWidget {
  const ContainerX({Key? key, this.child}) : super(key: key);

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: spaceMaxWidth),
        child: child,
      ),
    );
  }
}
