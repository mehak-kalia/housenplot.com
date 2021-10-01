import 'package:flutter/material.dart';
import 'package:housenplot1/home/onboarding-page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  navigateToHome(BuildContext context){


    Future.delayed(
        Duration(seconds: 3),
            (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => OnboardingPage() ));



        }
    );
  }
  @override
  Widget build(BuildContext context) {

    navigateToHome(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Container(child: Image.asset("food.png"),
              height: 40,
              width: 40,),*/
            SizedBox(height: 8,),
            Text("Housenplot.com", style: TextStyle(color: Colors.black, fontSize: 24),),
            Divider(),
            SizedBox(height: 4,),
            Text("Powered By", style: TextStyle(color: Colors.grey, fontSize: 15)),
            Text("Links Properties", style: TextStyle(color: Colors.green, fontSize: 18))
          ],
        ),
      ),
    );
  }
}








    