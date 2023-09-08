import 'dart:ui';

import 'package:flutter/material.dart';

import 'shared/cores.dart';

class BotaoDeNavegacao extends StatelessWidget {
  const BotaoDeNavegacao({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation =
        NavigationRail.extendedAnimation(context);
    return AnimatedBuilder(
      animation: animation,
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        return Container(
          padding: EdgeInsets.only(
            right: lerpDouble(
              0,
              176,
              animation.value,
            )!,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              color: branco,
            ),
            iconSize: 32,
            onPressed: onPressed,
          ),
        );
      },
    );
  }
}
