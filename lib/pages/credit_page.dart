import 'package:flutter/material.dart';
import 'package:movie_app/pages/error_page.dart';
import 'package:movie_app/utils/underedlist_util.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ErrorPage(),
        ));
      }
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: edge,
                      vertical: 30
                  ),
                  child:  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                            'assets/images/btn_back.png',
                            width: 30
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20)
                        ),
                        color: blackColor
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          UnorderedList([
                            "Kindpng",
                            "Flaticon",
                          ]),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Source',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl('https://jikan.moe/');
                            },
                            child:  Text(
                              'Jikan API',
                              style: goldTextStyle.copyWith(
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
