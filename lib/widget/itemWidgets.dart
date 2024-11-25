import 'package:flutter/material.dart';

class itemWidget extends StatelessWidget {
  List img = ['Black Coffee', 'Cold Coffee', 'Espresso', 'Latte1'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 200 / 300,
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(
                    0.5,
                  ),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/${img[i]}.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      img[i],
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ເຄື່ອງດື່ມດີທີ່ສຸດ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white38,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
