import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Arief Rachman Hakim'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/arief.jpg')),
              accountEmail: Text('ariefrachmanhakim1001@gmail.com')),
          DrawerListTile(
              iconData: Icons.group, title: 'New Group', onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.account_circle,
              title: 'Contact',
              onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.phone, title: 'Calls', onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.people_rounded,
              title: 'People Nearby',
              onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.settings,
              title: 'Settings',
              onTilePressed: () {}),
          Expanded(
              child: Divider(
            color: Colors.black,
          )),
          DrawerListTile(
              iconData: Icons.group_add_rounded,
              title: 'Invite Friend',
              onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.info,
              title: 'Telegram Features',
              onTilePressed: () {})
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;
  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
