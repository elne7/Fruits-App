import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_app/features/onboarding/presentation/widgets/underlined_text.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    onDone() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    }

    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        onBoardData: onBoardData,
        onDone: onDone,
        titleStyles: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.15,
        ),
        descriptionStyles: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade300,
        ),
        imageWidth: MediaQuery.of(context).size.width * 0.7,
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Color.fromARGB(255, 5, 107, 8),
          activeColor: kPrimaryColor,
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        skipButton: TextButton(
          onPressed: () {
            // print('skipButton pressed');
          },
          child: UnderlinedText(text: "Skip"),
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state, onDone),
              child: Container(
                width: 230,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor,
                ),
                child: Text(
                  state.isLastPage ? "Get Started" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState, Function? onDone) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      if (onDone != null) {
        onDone();
      }
    }
  }

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "E Shopping",
      description: "Explore  top organic fruits & grab them",
      imgUrl: "assets/imgs/Group 2805.png",
    ),
    const OnBoardModel(
      title: "Order is on The Way",
      description: "Your order is on the way and will be delivered to you soon",
      imgUrl: 'assets/imgs/Group 2805.png',
    ),
    const OnBoardModel(
      title: "Delivery Arrived",
      description: "Order is arrived at your place",
      imgUrl: 'assets/imgs/Group 2805.png',
    ),
  ];
}
