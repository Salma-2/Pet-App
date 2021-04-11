import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pet_app/presentation/screens/login_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    var listPagesViewModel = [
      PageViewModel(
        title: "Adoption",
        body: "Rehoming Your Pet \n Find a loving new home for your pet.",
        image: _buildImage('adoption.jpeg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Mating",
        body:
            "Find Your Pet Match\n Filter pets by location, breed, gender, age and size!",
        image: _buildImage('mating.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Rescue and Help",
        body: "Helping a pet doesn't have to be complicated!",
        image: _buildImage('rescue.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Shelter",
        body:
            "View Shelters ,filter them by nearest to you and rate, read their description and contact them",
        image: _buildImage('shelter.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Stores",
        body:
            "Can't find Pets Supplies?\nVisit our Stores Section, filter by fees and rate, then go shopping!",
        image: _buildImage('store.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Clinics",
        body: "Choose and Contact the best, nearest,  cheapest clinic for you.",
        image: _buildImage('clinic.jpeg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Ask a doctor",
        body:
            "Have a quick question and need a quick answer? See what in (Ask a Doctor) Section",
        image: _buildImage('ask_doctor.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Blogs",
        body:
            "Learn new information from doctors and specialist about your pet in the blogs",
        image: _buildImage('blogs.jpg'),
        decoration: pageDecoration,
      ),
    ];

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: listPagesViewModel,
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
