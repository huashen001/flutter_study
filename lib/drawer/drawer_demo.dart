import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          /* DrawerHeader(
                child: Text("Header".toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100]
                ),
              ),*/
          UserAccountsDrawerHeader(
            accountName: Text(
              "郭明死人",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("969958dffd@qqdg.net"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1596474939104&di=c0f525e494135297c1fd8a5f24258eeb&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201812%2F7%2F2018127203650_KvXLM.thumb.700_0.jpeg"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1888497427,74479132&fm=26&gp=0.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[100].withOpacity(0.6),
                        BlendMode.multiply))),
          ),
          ListTile(
            title: Text(
              "Messages",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Favorites",
              textAlign: TextAlign.right,
            ),
            trailing:
                Icon(Icons.favorite_border, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Settings",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
