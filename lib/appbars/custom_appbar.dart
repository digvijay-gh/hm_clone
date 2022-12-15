import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.person),
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.heart),
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bag),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
