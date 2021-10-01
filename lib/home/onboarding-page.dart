import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:lottie/lottie.dart';



class OnboardingPage extends StatelessWidget {
  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 45.0),
              child: Lottie.network(
                  'https://assets10.lottiefiles.com/private_files/lf30_qljp3S.json')),
          Container(
              width: double.infinity,
              child: Text('SECURED BACKUP', style: pageTitleStyle)),
          Container(
            width: double.infinity,
            child: Text(
              'Keep your files in closed safe so you can\'t lose them',
              style: pageInfoStyle,
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Lottie.network(
          'https://assets10.lottiefiles.com/private_files/lf30_qljp3S.json'),
          Text('CHANGE AND RISE', style: pageTitleStyle),
          Text(
            'Give others access to any file or folder you choose',
            style: pageInfoStyle,
          )
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [

          Lottie.network(
  'https://assets10.lottiefiles.com/private_files/lf30_qljp3S.json'),
          Text('EASY ACCESS', style: pageTitleStyle),
          Text(
            'Reach your files anytime from any devices anywhere',
            style: pageInfoStyle,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Container(),
              ),
                  (route) => false,
            );
          },
        ),
        isSkippable: true,
        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),

      ),
    );
  }
}
