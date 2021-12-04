import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final String title;
  final IconData icon;
  VoidCallback? ontap;

  MenuList({Key? key, required this.title, required this.icon, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28.0,
      ),
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      dense: true,
      onTap: ontap,
    );
  }
}
