import 'package:flutter/material.dart';

import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(24),
    this.color,
    this.borderRadius = BorderRadius.zero,
    this.hasShadow = false,
  });

  final Widget child;
  final EdgeInsets padding;
  final Color? color;
  final BorderRadius borderRadius;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color ?? context.colorScheme.tertiaryContainer,
          boxShadow: hasShadow
              ? <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(.2, .2),
                    blurRadius: 2,
                    color: context.colorScheme.tertiaryContainer,
                  )
                ]
              : null,
          borderRadius: borderRadius,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: color ?? context.colorScheme.tertiaryContainer,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        offset: Offset(2.2, 2.2),
                        blurRadius: 10,
                        color: Colors.black,
                      )
                    ],
                    borderRadius: borderRadius,
                  ),
                ),
              ),
              Padding(
                padding: padding,
                child: child,
              )
            ],
          ),
        ),
      ),
    );
  }
}
