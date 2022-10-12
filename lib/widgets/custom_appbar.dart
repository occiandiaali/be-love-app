import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Image.network(
              'https://www.svgheart.com/wp-content/uploads/2021/11/be-love-valentines-day-free-svg-file-SvgHeart.Com-1.png',
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'DISCOVER',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.message,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {}),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
