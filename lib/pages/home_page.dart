import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/credit_page.dart';
import 'package:movie_app/providers/movie_provider.dart';
import 'package:movie_app/widgets/buildin_transform.dart';
import 'package:movie_app/widgets/movie_card.dart';
import 'package:provider/provider.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Movie> movies = [];
  int type = 0;
  int _currentPage = 0;
  bool isAiring = true;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var movieProvider = Provider.of<MovieProvider>(context);

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              child: FutureBuilder(
                future: movieProvider.getMovies(type),
                builder: (context, snapshot) {

                  if (snapshot.hasData) {
                    movies = new List<Movie>.from(snapshot.data as List);

                    try {
                      return Container(
                        child: Stack(
                          children: [
                            Image.network(
                              movies[_currentPage].imageUrl,
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.black45),
                            ),
                            TransformerPageView(
                              scrollDirection: Axis.horizontal,
                              transformer: ScaleAndFadeTransformer(),
                              viewportFraction: 0.8,
                              onPageChanged: _onPageChanged,
                              itemCount: movies.length,
                              itemBuilder: (ctx, i) => MovieCard(movies[_currentPage]),
                            ),
                          ],
                        ),
                      );
                    } catch(e) {
                      return InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Center(
                          child: Text(
                            'Oopss..something error. please tap any screen',
                            style: whiteTextStyle.copyWith(
                                fontSize: 14
                            ),
                          ),
                        ),
                      );
                    }

                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CreditPage(),
                      ),
                      );
                    },
                    child: Text(
                      'Credit',
                      style: lightGoldTextStyle.copyWith(
                          fontSize: 12
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            type = 0;
                            Provider.of<MovieProvider>(context, listen: false)
                                .getMovies(type);
                            isAiring = true;
                          });
                        },
                        child: Text(
                          'Airing',
                          style: isAiring? goldTextStyle.copyWith(
                              fontSize: 16
                          ) : lightGoldTextStyle.copyWith(
                              fontSize: 14
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            type = 1;
                            Provider.of<MovieProvider>(context, listen: false)
                                .getMovies(type);
                            isAiring = false;
                          });
                        },
                        child: Text(
                          'Upcoming',
                          style: isAiring? lightGoldTextStyle.copyWith(
                              fontSize: 14
                          ) : goldTextStyle.copyWith(
                              fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )


      )
    );
  }
}
