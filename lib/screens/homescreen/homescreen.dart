import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/appbars/custom_appbar.dart';
import 'package:hm_by_digvijay/constants.dart';
import 'package:hm_by_digvijay/screens/homescreen/trending_category.dart';

import '../../commonwidgets/leave_space_widget.dart';
import '../../drawers/homescreendrawer.dart';
import 'expandablewid.dart';
import 'magazinewidget.dart';
import 'new_arrivals.dart';
import '../../commonwidgets/recommendation_wid.dart';
import 'sections_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: ""),
      body: HomeScreenBody(),
      drawer: const MyDrawer(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeaveSpaceWidget(20),
          const Center(
            child: Text(
              "Free shipping for members above Rs 999.join Now!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          LeaveSpaceWidget(36),
          //New styles added & further price drops widget
          SaleOfferWidget(),
          LeaveSpaceWidget(36),
          RecommendedItem(
            bgImageUrl: imageUrl8,
            title: "Attention set on expressive knits",
            desc: "The bigger, the bolder, the brighter, the better.",
          ),
          LeaveSpaceWidget(36),
          RecommendedItem(
            bgImageUrl: imageUrl7,
            title: "Sequin season",
            desc: "It's time to sparkle.",
          ),
          LeaveSpaceWidget(36),
          const TrendingCategoriesWidget(),
          LeaveSpaceWidget(20),
          SectionsList(),
          LeaveSpaceWidget(36),
          const NewArrivalsWidget(),
          LeaveSpaceWidget(20),
          RecommendedItem(
            bgImageUrl: imageUrl9,
            title: "Jingle all the way",
            desc:
                "Spread a little festive cheer with the perfect holiday outfit.",
          ),
          LeaveSpaceWidget(20),
          RecommendedItem(
            bgImageUrl: imageUrl10,
            title: "Night Moves",
            desc:
                "Reflective runwear to move whenever the mood takes you, by H&M Move",
          ),
          LeaveSpaceWidget(36),
          const MagazineWidget(),
        ],
      ),
    );
  }
}
