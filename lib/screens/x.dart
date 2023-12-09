import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:page_flip_builder/page_flip_builder.dart';

import 'package:flash_cards/core/extensions/string_extensions.dart';
import 'package:flash_cards/modules/flash_card_list/data/flash_card_data.dart';

class FlashCardFlipCard extends StatelessWidget {
  final FlashCardData flashCardData;
  final int index;
  final LinearGradient gradient;
  final GlobalKey<PageFlipBuilderState> cardKey;

  const FlashCardFlipCard({
    Key? key,
    required this.flashCardData,
    required this.index,
    required this.gradient,
    required this.cardKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cardKey.currentState?.flip(),
      child: PageFlipBuilder(
        interactiveFlipEnabled: false,
        key: cardKey,
        onFlipComplete: (isFrontSide) => print('isFrontSide: $isFrontSide'),
        flipAxis: Axis.horizontal,
        backBuilder: (_) => Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CupertinoColors.white,
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Back'),
                Text(flashCardData.frontText),
                const SizedBox(height: 32),
                Text(
                  flashCardData.backText,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  (index + 1).toString(),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        frontBuilder: (_) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CupertinoColors.white,
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ],
          ),
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Front'),
                  Expanded(
                    child: Center(
                      child: Text(
                        flashCardData.frontText.toCapitalized(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const LinearGradient gradientRed = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF3868),
    Color(0xFFFFB49A),
  ],
);

const LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF736EFE),
    Color(0xFF62E4EC),
  ],
);

const LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0BA4E0),
    Color(0xFFA9E4BD),
  ],
);

const LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF6864),
    Color(0xFFFFB92F),
  ],
);

const LinearGradient gradientViolet = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF7960F1),
    Color(0xFFE1A5C9),
  ],
);

const List<LinearGradient> gradientList = [
  gradientRed,
  gradientPurple,
  gradientBlue,
  gradientPink,
  gradientViolet
];

const List<Color> colorList = [
  Color.fromRGBO(242, 213, 248, 1),
  Color.fromRGBO(236, 203, 241, 1),
  Color.fromRGBO(230, 192, 233, 1),
  Color.fromRGBO(221, 187, 226, 1),
  Color.fromRGBO(211, 182, 218, 1),
  Color.fromRGBO(201, 177, 211, 1),
  Color.fromRGBO(191, 171, 203, 1),
  Color.fromRGBO(179, 163, 194, 1),
  Color.fromRGBO(166, 154, 185, 1),
  Color.fromRGBO(141, 137, 166, 1),
];
