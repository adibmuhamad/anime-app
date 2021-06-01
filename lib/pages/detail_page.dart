import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/bottom_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';
import 'error_page.dart';

class DetailPage extends StatelessWidget {

  final Movie movie;
  DetailPage(this.movie);

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
        child: Stack(
          children: [
            Image.network(
              movie.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)
                      ),
                      color: blackColor
                  ),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE : TITLE
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: whiteTextStyle.copyWith(
                                    fontSize: 22
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '(${movie.type})',
                                    style: whiteLightTextStyle.copyWith(
                                        fontSize: 16
                                    ),
                                  ),
                                  movie.score == 0 ? Text(
                                    '-',
                                    style: whiteLightTextStyle.copyWith(
                                        fontSize: 14
                                    ),
                                  ) : Text(
                                    '${movie.score} / 10',
                                    style: whiteLightTextStyle.copyWith(
                                        fontSize: 14
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MAL ID',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              Text(
                                '${movie.malId}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rank',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              Text(
                                '${movie.rank}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Episode',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              movie.episode == 0 ? Text(
                                '-',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ) : Text(
                                '${movie.episode}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start Date',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              movie.startDate == '' ? Text(
                                '-',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ) : Text(
                                '${movie.startDate}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'End Date',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              movie.endDate == null || movie.endDate == '' ? Text(
                                '-',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ) : Text(
                                '${movie.endDate}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: edge
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Members',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              movie.member == 0 ? Text(
                                '-',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ) : Text(
                                '${movie.member}',
                                style: whiteLightTextStyle.copyWith(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),

                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/btn_back.png',
                  width: 30,
                  color: goldColor,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 200,
        margin: EdgeInsets.symmetric(
            horizontal: edge
        ),
        decoration: BoxDecoration(
          color: goldColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: BottomButton(
          title: 'More Info',
          url: '${movie.url}',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
