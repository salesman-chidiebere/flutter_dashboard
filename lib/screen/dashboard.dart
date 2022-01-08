import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/icon_button.dart';
import 'package:flutter_navigation/widgets/topbar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        TopBar(),
        Container(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Your Progress 1"),
                            Spacer(),
                            Text("0%")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          value: 0,
                          backgroundColor: Colors.pink,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //itemExtent: 0.1,
                  children: [
                    CiclularCard(
                      iconData: Icons.waterfall_chart_outlined,
                      iconColor: Colors.teal,
                      iconSize: 24,
                      title: "Rank",
                      textSize: 14,
                    ),
                    CiclularCard(
                      iconData: Icons.share_outlined,
                      iconColor: Colors.teal,
                      iconSize: 24,
                      title: "Refer",
                      textSize: 14,
                    ),
                    CiclularCard(
                      iconData: Icons.videogame_asset,
                      iconColor: Colors.teal,
                      iconSize: 24,
                      title: "Game",
                      textSize: 14,
                    ),
                    CiclularCard(
                      iconData: Icons.wallet_giftcard,
                      iconColor: Colors.teal,
                      iconSize: 24,
                      title: "Gift",
                      textSize: 14,
                    ),
                  ],
                ),
              ),
              /*Swiper(
                autoplay: true,
                itemCount: 9,
                itemHeight: MediaQuery.of(context).size.height / 2,
                itemWidth: MediaQuery.of(context).size.width / 1.2,
                layout: SwiperLayout.STACK,
                autoplayDelay: kDefaultAutoplayDelayMs,
                /*pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            activeSize: 15.0,
                            color: Colors.black,
                            activeColor: Colors.grey,
                          ),
                        ),*/
                itemBuilder: (BuildContext context, int index) {
                  return Container();
                },
              ),*/

               Container(
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width /1.1,
                padding: EdgeInsets.only(top: 30.0),
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 20,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            Text(
                              "Title",
                              style: TextStyle(fontSize: 20, color: Colors.red,),
                              textAlign: TextAlign.left,
                            ),
                            /*Text(
                              "video.",
                              style: TextStyle(fontSize: 16, color: Colors.white,),
                              textAlign: TextAlign.left,
                              maxLines: 5,
                            ),*/
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.info,
                              size: 16,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Announcement",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
