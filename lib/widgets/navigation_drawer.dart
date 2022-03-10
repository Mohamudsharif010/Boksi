import 'package:boksi/pages/ContactUsPage.dart';
import 'package:boksi/pages/ListBooksPage.dart';
import 'package:boksi/pages/LogoutPage.dart';
import 'package:boksi/pages/MyAccountPage.dart';
import 'package:boksi/pages/MyOrdersPage.dart';
import 'package:boksi/pages/MyReviews.dart';
import 'package:boksi/pages/MySales.dart';
import 'package:boksi/pages/UserPage.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Mohamud Sharif';
    final email = 'mohamud@017gmail.com';
    final urlImage = 'https://avatars.githubusercontent.com/u/44440249?v=4';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(children: [
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'List Books to Sell',
                    icon: Icons.list,
                    onClicked: () => selectedItem(context, 0)),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'My Account',
                  icon: Icons.account_box,
                  onClicked: () => selectedItem(context, 1),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'My Orders',
                  icon: Icons.sell_outlined,
                  onClicked: () => selectedItem(context, 2),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'My Reviews',
                  icon: Icons.reviews,
                  onClicked: () => selectedItem(context, 3),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'My sales',
                  icon: Icons.sell,
                  onClicked: () => selectedItem(context, 4),
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'Contact Us',
                  icon: Icons.contact_page,
                  onClicked: () => selectedItem(context, 5),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Logout',
                  icon: Icons.logout,
                  onClicked: () => selectedItem(context, 6),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromARGB(30, 60, 168, 1),
                child: Icon(
                  Icons.add_comment_outlined,
                  color: Colors.white70,
                ),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListBooksPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyAccountPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyOrdersPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyReviews(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MySales(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ContactUsPage(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LogoutPage(),
        ));
        break;
    }
  }
}
