import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/screens/sectionscreen/section_screen.dart';

class SaleOfferWidget extends StatelessWidget {
  final List items = [
    "LADIES",
    "MEN",
    "KIDS",
    "BABY",
    "DIVIDED",
  ];

  SaleOfferWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ExpandableNotifier(
          child: ScrollOnExpand(
        child: Card(
          elevation: 0,
          child: Column(
            children: <Widget>[
              ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToExpand: true,
                  tapBodyToCollapse: false,
                  hasIcon: false,
                ),
                header: _buildHeader(),
                collapsed: Container(),
                expanded: buildList(),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Container _buildHeader() {
    return Container(
      color: Color(0xffc9002d),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 24,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 10,
              child: Column(children: const [
                Text(
                  "New styles added & further price drops!\nUp to 60% off on sale",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Available on hm.com,app & in-store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ]),
            ),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  buildList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, SectionScreen.routeName);
          },
          child: ListTile(
            title: Text(
              items[index],
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            trailing:
                const Icon(Icons.arrow_forward, color: Colors.black, size: 20),
          ),
        );
      },
    );
  }
}
