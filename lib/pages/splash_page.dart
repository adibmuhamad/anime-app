import 'package:flutter/material.dart';
import 'package:movie_app/pages/home_page.dart';

import '../theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Get Latest\nAnime Info',
                      style: goldTextStyle.copyWith(
                          fontSize: 40
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/btn_next.png',
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child:  Image.asset(
                    'assets/images/splash.png',
                    height: 400,
                  ),
                ),

              ),
            ]
        ),
      ),
    );
  }
}
