import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart' as intro;
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flash_cards/core/constants/ui_constants.dart';
import 'package:flash_cards/core/extensions/color_extentions.dart';
import 'package:flash_cards/core/extensions/context_ui_extension.dart';
import 'package:flash_cards/core/extensions/text_style_extension.dart';
import 'package:flash_cards/routes/dashboard_route.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bg = Colors.transparent;
    final fontColor = context.colorScheme.secondary;
    final decoration = intro.PageDecoration(
      pageColor: bg,
      titleTextStyle: context.titleLargePrimaryContainer.withColor(fontColor)!,
      bodyTextStyle: context.textTheme.bodyLarge!.withColor(fontColor)!,
      pageMargin: const EdgeInsets.only(top: 200),
      imagePadding: EdgeInsets.only(top: context.vHeight / 10),
    );
    final pages = [
      intro.PageViewModel(
        decoration: decoration,
        title: "Art and Adventure Companion",
        body:
            "Get ready to explore amazing city landmarks and enjoy unforgettable experiences without the hassle of planning.",
      ),
      intro.PageViewModel(
        decoration: decoration,
        title: "Unveiling the Magic of your City",
        body:
            "Dive into our app to discover hidden gems and thrilling events and arts that will make every day an unforgettable journey.",
      ),
      intro.PageViewModel(
        decoration: decoration,
        title: "Personalized Adventures at Your Fingertips",
        body:
            "Your city adventures are personalized just for you. Find activities that match your preferences, ensuring that each experience is a perfect fit for your taste and style.",
      ),
      intro.PageViewModel(
        decoration: decoration,
        title: "“Speak Friend and Enter”",
        bodyWidget: Column(
          children: [
            Text(
              "In thy neighborhood, if thou wishest to discern the happenings, grant access to thy location, thou must.",
              style: decoration.bodyTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
          ],
        ),
      )
    ];
    return Container(
      color: context.colorScheme.background,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Stack(
        children: [
          intro.IntroductionScreen(
            globalBackgroundColor: bg,
            dotsDecorator: intro.DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(50.0, 10.0),
              activeColor: context.colorScheme.primary,
              color: fontColor,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
            ),
            dotsContainerDecorator: const BoxDecoration(color: bg),
            pages: pages,
            showSkipButton: true,
            skip: _buildButton('Skip', context),
            next: _buildButton('Next', context),
            done: _buildButton('Done', context),
            onDone: () => onDone(),
            onSkip: () => onDone(),
          ),
        ],
      ),
    );
  }

  void onDone() {
    context.goNamed(dashboardRoute.name!);
  }

  Widget _buildButton(
    String text,
    BuildContext context,
  ) {
    return Container(
      padding: kTinyPadding,
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(height: 48),
      decoration: ShapeDecoration(
        color: context.colorScheme.primary,
        shape: const StadiumBorder(
          side: BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
        ),
      ),
      child: Text(
        text,
        style: context.titleMediumOnPrimaryContainer.withColor(
          context.colorScheme.onTertiary,
        ),
      ),
    );
  }
}
