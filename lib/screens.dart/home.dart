// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens.dart/drawerside.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:foodapp/screens.dart/singal_product.dart';

// ignore: camel_case_types
class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  Widget _buildHerbsProduct() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
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
              Singalproducts(
                productImage:
                    'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg',
                productName: 'Fresh Basil',
                onTap: () {},
                productPrice: '50\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://www.zaroontrading.com/wp-content/uploads/2020/10/atyrpYQoxdoTzmEgu8HMWE.jpg',
                productName: 'Fresh Spanich',
                onTap: () {},
                productPrice: '49\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80561869_fb_mint.jpg',
                productName: 'Fresh mint',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://5.imimg.com/data5/JO/KO/MY-26989188/coriander-leaf-500x500.jpg',
                productName: 'Fresh Coriander',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshFruits() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
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
              Singalproducts(
                productImage:
                    'https://media.istockphoto.com/photos/banana-bunch-picture-id173242750?k=20&m=173242750&s=612x612&w=0&h=dgXrAP6otDeY5h6fhy-SRmW-2dFOCKx1_hNS1lLWF7Y=',
                productName: 'Fresh Banana',
                onTap: () {},
                productPrice: '50\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://media.istockphoto.com/photos/red-apple-picture-id495878092?b=1&k=20&m=495878092&s=170667a&w=0&h=bJgILGFxOka0ymPlgilH8qaRxFhKole_M6IiYs6RyGM=',
                productName: 'Fresh Apple',
                onTap: () {},
                productPrice: '49\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://sc04.alicdn.com/kf/H219ded6addd2459795243883ec688273I.jpg',
                productName: 'Fresh Mango',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://panzers.co.uk/wp-content/uploads/2021/05/666.jpg',
                productName: 'Fresh WaterMelon',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootVegetables() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Root Vegetables".text.size(18).gray900.make(),
              "View all".text.size(15).gray600.make(),
            ],
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Singalproducts(
                productImage:
                    'https://www.aywadeal.com/wp-content/uploads/2019/03/White-Radish.jpg',
                productName: 'White Radish',
                onTap: () {},
                productPrice: '50\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://static.onecms.io/wp-content/uploads/sites/44/2020/07/23/chives-vs-green-onions.jpg',
                productName: 'Green Onion',
                onTap: () {},
                productPrice: '49\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://www.westend61.de/images/0000103819pw/fennel-on-white-background-MAEF003173.jpg',
                productName: 'Funnel',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
              Singalproducts(
                productImage:
                    'https://cdn.shopify.com/s/files/1/0263/3701/7946/products/green-garlic.jpg?v=1589056226',
                productName: 'Green Garlic',
                onTap: () {},
                productPrice: '40\$/50 Gram',
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcbcbcb),
      drawer: Drawerside(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: 'Home'.text.black.make(),

        // ignore: pref er_const_literals_to_create_immutables
        actions: const [
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
          physics: BouncingScrollPhysics(),
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
            _buildHerbsProduct(),
            _buildFreshFruits(),
            _buildRootVegetables(),
          ],
        ),
      ),
    );
  }
}
