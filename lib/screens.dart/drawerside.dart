import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Drawerside extends StatelessWidget {
  const Drawerside({Key? key}) : super(key: key);
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: Vx.black,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Vx.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.white54,
                    child: CircleAvatar(
                      backgroundColor: Vx.yellow800,
                      backgroundImage: NetworkImage(
                        "https://s3.envato.com/files/328957910/vegi_thumb.png",
                      ),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Welcome Guest".text.size(18).bold.make(),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 35,
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: SizedBox(
                          width: 90,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: "Login".text.bold.black.make(),
                            style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              side: const BorderSide(
                                  width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              icon: Icons.home_outlined,
              title: "Home",
            ),
            listTile(
              icon: CupertinoIcons.cart,
              title: "Review Cart",
            ),
            listTile(
              icon: CupertinoIcons.person,
              title: "My Profile",
            ),
            listTile(
              icon: CupertinoIcons.bell,
              title: "Notification",
            ),
            listTile(
              icon: CupertinoIcons.star,
              title: "Rate & Review",
            ),
            listTile(
              icon: CupertinoIcons.heart,
              title: "Wishlist",
            ),
            listTile(
              icon: CupertinoIcons.doc,
              title: "Raise a Complaint",
            ),
            listTile(
              icon: Icons.message_outlined,
              title: "FAQs",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Contact Support".text.black.bold.make(),
                  const SizedBox(
                    height: 10,
                  ),
                  "Call us:    +923152502738".text.black.make(),
                  const SizedBox(
                    height: 4,
                  ),
                  "Mail us:    hello@retry.com".text.black.make(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
