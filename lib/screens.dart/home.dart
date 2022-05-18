// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);
  Widget singalProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: NetworkImage(
                  'http://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Fresh Basil".text.black.bold.make(),
                  "50\$/ 50 Gram".text.gray400.bold.make(),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 4),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Vx.black,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Expanded(
                                child: '50 Gram '.text.size(5).make(),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 15,
                                  color: Vx.yellow400,
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 3),
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Vx.gray400),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        size: 18,
                                        color: Color(0xffd0b84c),
                                      ),
                                      "1"
                                          .text
                                          .color(
                                            Color(0xffd0b84c),
                                          )
                                          .make(),
                                      Icon(Icons.add,
                                          size: 18, color: Color(0xffd0b84c)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: 'Home'.text.black.make(),

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_literals_to_create_immutables
          CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/vegi.jpg')),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 165,
                            bottom: 10,
                          ),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Text(
                              "Vegi",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                shadows: const [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0xff034509),
                                    offset: Offset(3, 3),
                                  ),
                                ],
                              ),
                            ).pOnly(top: 8, left: 17),
                          ),
                        ),
                        Text(
                          "30% Off",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                            shadows: const [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0xff034509),
                                offset: Offset(3, 3),
                              ),
                            ],
                          ),
                        ).pOnly(
                          right: 150,
                        ),
                        "On all vegetables products"
                            .text
                            .white
                            .size(13)
                            .bold
                            .make()
                            .pOnly(right: 70, top: 3),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Herbs Seasonings".text.size(18).gray900.make(),
                  "View all".text.size(15).gray600.make(),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Fresh Fruits".text.size(18).gray900.make(),
                  "View all".text.size(15).gray600.make(),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                  singalProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
