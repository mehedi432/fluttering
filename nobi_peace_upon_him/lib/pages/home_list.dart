import 'package:flutter/material.dart';
import 'package:nobijirjiboni/pages/details/details.dart';
import 'package:nobijirjiboni/utils/container.dart';

class HomeList extends StatelessWidget {
  final List titles = [
    {'title': 'আরবের পূর্বের অবস্থা', 'block': 1},
    {'title': 'রাসুলুল্লাহ (সঃ) জন্ম ও বংশ ', 'block': 2},
    {'title': 'দাওয়াতের কার্যক্রম শুরুর অংশ', 'block': 3},
    {'title': 'নবুয়াত এবং সালাত পরবর্তী কাজ', 'block': 4},
    {'title': 'সংগ্রাম ও অভিযান এর সময়', 'block': 5},
    {'title': 'বদর, কিবলা এবং ঈদ-উল-ফিতর', 'block': 6},
    {'title': 'রাসুলুল্লাহ (সঃ) এর মাদানী জীবন', 'block': 7},
    {'title': 'রাসুলুল্লাহ (সঃ) এর মদিনা হিজরত', 'block': 8},
    {'title': 'কুরাইশ ও নারাশির দরবার', 'block': 9},
    {'title': 'সাহাবীদের উপর অত্যাচার', 'block': 10},
    {'title': 'প্রিয় রাসুলুল্লাহ (সাঃ) এর দেহত্যাগ', 'block': 11},
    {'title': 'মোহাম্মাদ (সাঃ) উপর অত্যাচার', 'block': 12},
    {'title': 'মোহাম্মাদ (সাঃ) বিদায় হজ্জ এর ভাষণ', 'block': 13},
    {'title': 'শিক্ষণীয় শেষ কথা ', 'block': 14},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image1.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[0]['block']}",
                              title: "${titles[0]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[0]['title']}",
                  icon: Icons.timelapse,
                ),
                CustomContainer(
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) => Details(
                                block: "${titles[1]['block']}",
                                title: "${titles[1]['title']}",
                              ));
                      Navigator.of(context).push(route);
                    },
                    title: "${titles[1]['title']}",
                    icon: Icons.perm_identity),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) => Details(
                                block: "${titles[2]['block']}",
                                title: "${titles[2]['title']}",
                              ));
                      Navigator.of(context).push(route);
                    },
                    title: "${titles[2]['title']}",
                    icon: Icons.person_add),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[3]['block']}",
                              title: "${titles[3]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[3]['title']}",
                  icon: Icons.calendar_view_day,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[4]['block']}",
                              title: "${titles[4]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[4]['title']}",
                  icon: Icons.warning,
                ),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[5]['block']}",
                              title: "${titles[5]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[5]['title']}",
                  icon: Icons.present_to_all,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[6]['block']}",
                              title: "${titles[6]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[6]['title']}",
                  icon: Icons.timer,
                ),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[7]['block']}",
                              title: "${titles[7]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[7]['title']}",
                  icon: Icons.branding_watermark,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[8]['block']}",
                              title: "${titles[8]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[8]['title']}",
                  icon: Icons.people_outline,
                ),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[9]['block']}",
                              title: "${titles[9]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[9]['title']}",
                  icon: Icons.warning,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[10]['block']}",
                              title: "${titles[10]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[10]['title']}",
                  icon: Icons.remove,
                ),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[11]['block']}",
                              title: "${titles[11]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[11]['title']}",
                  icon: Icons.scatter_plot,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[12]['block']}",
                              title: "${titles[12]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[12]['title']}",
                  icon: Icons.scatter_plot,
                ),
                CustomContainer(
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => Details(
                              block: "${titles[13]['block']}",
                              title: "${titles[13]['title']}",
                            ));
                    Navigator.of(context).push(route);
                  },
                  title: "${titles[13]['title']}",
                  icon: Icons.scatter_plot,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

