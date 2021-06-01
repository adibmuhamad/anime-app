import 'package:flutter/material.dart';
import 'package:movie_app/pages/home_page.dart';

import '../theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/error.png',
                  width: 300,
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Where are you going?',
                  style: whiteTextStyle.copyWith(
                      fontSize: 24
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Seems like the page that you were\nrequested is already gone',
                  style: greyTextStyle.copyWith(
                      fontSize: 16
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 210,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                              (route) => false);
                    },
                    color: goldColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)
                    ),
                    child: Text(
                      'Back to Home',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}