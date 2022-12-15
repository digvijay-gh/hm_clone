import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modal/product_modal.dart';

class ProductImageWidget extends StatefulWidget {
  const ProductImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Hero(
            tag: "ProductImage1",
            child: PageView.builder(
                itemCount: greenSweatshirt.imageUrl.length,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: greenSweatshirt.imageUrl[index],
                  );
                }),
          ),
        ),
        Positioned(
          bottom: 28,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  greenSweatshirt.imageUrl.length,
                  (index) => Container(
                    height: 8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: (_selectedIndex == index)
                          ? Colors.white
                          : Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 8,
          top: 12,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              icon: const Icon(
                CupertinoIcons.bag,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          right: 8,
          top: 72,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              icon: const Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          left: 8,
          top: 12,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
