import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'PPL',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            accountEmail: Text(
              '1766468447@qq.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595434862066&di=5570b1c93e76fc07ad6d4feb186b61c3&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Forj360%2F005NlMOggy1gd1f4mvwqlj314013nmzx.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                image: DecorationImage(
                    image: NetworkImage(
                      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3468842248,1928586949&fm=26&gp=0.jpg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.5),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              'MESSAGE',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text(
              'FAVORITE',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text(
              'SETTINGS',
              textAlign: TextAlign.right,
            ),
            onTap: () => Navigator.pop(context),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
          )
        ],
      ),
    );
  }
}
