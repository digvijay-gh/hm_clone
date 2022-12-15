import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/constants.dart';

import 'package:hm_by_digvijay/commonwidgets/recommendation_wid.dart';
import 'package:hm_by_digvijay/screens/sectionscreen/section_screen.dart';

import '../commonwidgets/leave_space_widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            LeaveSpaceWidget(12),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "assets/images/logo.png",
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 5, child: SizedBox())
              ],
            ),
            LeaveSpaceWidget(8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        LeaveSpaceWidget(12),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 8,
                          separatorBuilder: (BuildContext context, int index) {
                            return LeaveSpaceWidget(24);
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final List items = [
                              "Ladies",
                              "Men",
                              "Baby",
                              "Kids",
                              "Divided",
                              "H&M HOME",
                              "Sale",
                              "Sustainability"
                            ];
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SectionScreen.routeName);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  items[index],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        LeaveSpaceWidget(36),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          separatorBuilder: (BuildContext context, int index) {
                            return LeaveSpaceWidget(32);
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final List items = [
                              "Inbox",
                              "My Accounnt",
                              "Customeer Service",
                              "Store Locator",
                              "Follow us",
                              "App Settings",
                            ];
                            return InkWell(
                              child: Text(
                                items[index],
                                style: const TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            );
                          },
                        ),
                        LeaveSpaceWidget(32),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
