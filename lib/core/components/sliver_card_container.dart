import 'package:flutter/material.dart';

import 'package:sliver_tools/sliver_tools.dart';

import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';

class SliverCardContainer extends StatelessWidget {
  const SliverCardContainer({
    super.key,
    required this.sliver,
    this.padding = const EdgeInsets.all(24),
    this.color,
    this.borderRadius = BorderRadius.zero,
    this.hasShadow = false,
  });

  final Widget sliver;
  final EdgeInsets padding;
  final Color? color;
  final BorderRadius borderRadius;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return SliverStack(
      insetOnOverlap: false, // defaults to false
      children: <Widget>[
        SliverPositioned.fill(
          child: Container(
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
          ),
        ),
        SliverPadding(
          padding: padding,
          sliver: DecoratedSliver(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            sliver: SliverClip(child: sliver),
          ),
        )
      ],
    );
  }
}
