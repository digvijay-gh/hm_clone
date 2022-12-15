import 'package:flutter/material.dart';
import 'package:hm_by_digvijay/commonwidgets/leave_space_widget.dart';
import 'package:hm_by_digvijay/constants.dart';

class ProductSize {
  final String size;
  final bool isAvailable;
  final bool fewPiecesLeft;
  ProductSize({
    required this.size,
    required this.isAvailable,
    required this.fewPiecesLeft,
  });
}

List sizes = [
  ProductSize(size: "XS", fewPiecesLeft: false, isAvailable: false),
  ProductSize(size: "S", fewPiecesLeft: true, isAvailable: true),
  ProductSize(size: "M", fewPiecesLeft: false, isAvailable: true),
  ProductSize(size: "L", fewPiecesLeft: false, isAvailable: false),
  ProductSize(size: "XL", fewPiecesLeft: false, isAvailable: true),
  ProductSize(size: "XXL", fewPiecesLeft: false, isAvailable: true),
];

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2,
        )
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return const SizePopUp();
                  });
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 22,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Select size",
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black54,
                      )
                    ]),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2 - 22,
            height: 44,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SizePopUp extends StatelessWidget {
  const SizePopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select size",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              LeaveSpaceWidget(4),
              Divider(
                color: Colors.grey.shade400,
              ),
              ...List.generate(
                sizes.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sizes[index].size,
                        style: const TextStyle(fontSize: 16),
                      ),
                      sizes[index].isAvailable
                          ? sizes[index].fewPiecesLeft
                              ? Text(
                                  "Few Pieces Left",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.red.shade600),
                                )
                              : const SizedBox()
                          : Row(
                              children: const [
                                Icon(
                                  Icons.mail_outline,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text("Notify Me")
                              ],
                            )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
            ],
          ),
        )
      ],
    );
  }
}
