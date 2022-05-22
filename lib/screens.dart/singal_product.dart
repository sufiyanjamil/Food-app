import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class Singalproducts extends StatelessWidget {
  final String productImage;
  final String productName;
  final VoidCallback onTap;
  final String productPrice;
  // ignore: use_key_in_widget_constructors
  const Singalproducts(
      {required this.productImage,
      required this.productName,
      required this.onTap,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70),
                    padding: const EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        productImage,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        productName.text.black.bold.make(),
                        productPrice.text.gray400.bold.make(),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: SizedBox(
                                height: 32,
                                width: 100,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 4),
                                  height: 30,
                                  width: 70,
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
                                      const Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 15,
                                          color: Vx.yellow400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 30,
                                  width: 20,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Vx.gray400),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.remove,
                                                size: 18,
                                                color: Color(0xffd0b84c),
                                              ),
                                              "1"
                                                  .text
                                                  .color(
                                                    const Color(0xffd0b84c),
                                                  )
                                                  .make(),
                                              const Icon(Icons.add,
                                                  size: 18,
                                                  color: Color(0xffd0b84c)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
          ),
        ],
      ),
    );
  }
}
