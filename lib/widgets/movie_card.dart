import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/detail_page.dart';

import '../theme.dart';

class MovieCard extends StatelessWidget {

  final Movie movie;
  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      movie.title,
                      style: whiteTextStyle.copyWith(
                        fontSize: 28
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '(${movie.type})',
                      style: whiteLightTextStyle.copyWith(
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DetailPage(movie),
                          ),
                        );
                      },
                      color: lightGoldColor,
                      child: Text(
                        'More Info',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: lightGoldColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Episodes',
                          style: whiteLightTextStyle,
                        ),
                        movie.episode == 0 ? Text(
                          '-',
                          style: whiteLightTextStyle.copyWith(
                              fontSize: 28
                          ),
                        ) :  Text(
                          '${movie.episode}',
                          style: whiteLightTextStyle.copyWith(
                            fontSize: 28
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Score',
                          style: whiteLightTextStyle,
                        ),
                        movie.episode == 0 ? Text(
                          '-',
                          style: whiteLightTextStyle.copyWith(
                              fontSize: 28
                          ),
                        ) :  Text(
                          '${movie.score} / 10',
                          style: whiteLightTextStyle.copyWith(
                              fontSize: 18
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Start',
                          style: whiteLightTextStyle,
                        ),
                        movie.episode == 0 ? Text(
                          '-',
                          style: whiteLightTextStyle.copyWith(
                              fontSize: 28
                          ),
                        ) :  Text(
                          '${movie.startDate}',
                          style: whiteLightTextStyle.copyWith(
                              fontSize: 18
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
