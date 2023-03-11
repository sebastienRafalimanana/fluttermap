// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(""),
            // body: "Les présentes “Conditions Générales d\’Utilisation” décrites ci-après, aussi dénommées CGU régissent les rapports entre LAZAN’NY BETSILEO et les utilisateurs de l’application mobile et s’appliquent sans restriction ni réserve pour toute utilisation ou téléchargement de l’application. L’utilisateur est tenu d’accepter les présentes CGU pour tout téléchargement ou utilisation de l’application en cochant la case\n« J'accepte Winy, les conditions d'Utilisation, la politique de confidentialité et la politique des cookies ».",
            bodyWidget: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Lottie.network('https://assets5.lottiefiles.com/private_files/lf30_1pyhbmwr.json', width: 300),
                SizedBox(height: 30,),
                Text("CONDITIONS GENERALES D'UTILISATION", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Les présentes “Conditions Générales d\’Utilisation” décrites ci-après, aussi dénommées CGU régissent les rapports entre LAZAN’NY BETSILEO et les utilisateurs de l’application mobile et s’appliquent sans restriction ni réserve pour toute utilisation ou téléchargement de l’application. L’utilisateur est tenu d’accepter les présentes CGU pour tout téléchargement ou utilisation de l’application en cliquant"),
                TextButton(onPressed: (){}, child: Text("« J'accepte Winy, les conditions d'Utilisation, la politique de confidentialité et la politique des cookies ».", style: TextStyle(fontSize: 12),)),
                SizedBox(height: 5,),
                TextButton(onPressed: (){}, child: Text("Voir les conditions", style: TextStyle(fontSize: 12),)),
              ],
            ),
            decoration: const PageDecoration(
              bodyTextStyle: TextStyle()
            )
          ),
          PageViewModel(
            titleWidget: Text(""),
            bodyWidget: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 120,),
                Lottie.network('https://assets10.lottiefiles.com/private_files/lf30_jgkflosi.json', repeat: false,),
                SizedBox(height: 30,),
                Text("Maintenant, naviguons ensemble..."),
              ],
            ),
            decoration: const PageDecoration(
              bodyTextStyle: TextStyle(),)
            
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text('Passer'),
        next: Icon(Icons.navigate_next),
        done: Text("Terminé"),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 10.0),
          color: Colors.black26,
          activeColor: Colors.blue,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          )
        ),
      ),
    );
  }
}