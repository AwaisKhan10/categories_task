import 'package:code_structure/core/constants/app_assets.dart';
import 'package:code_structure/core/constants/auth_field_decoration.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/custom_widgets/custom_categories.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Category',
          style: style25,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: authFieldDecoration.copyWith(
                  hintText: 'Searche Categories',
                  prefixIcon: const Icon(Icons.search_rounded),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Popular Categories',
                style: style16.copyWith(fontWeight: FontWeight.w400),
              ),
              // Container(
              //   height: 145,
              //   child: ListView(
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       _container(
              //           text: 'Food', img: AppAssets().img7, number: '7'),
              //       _container(
              //           text: 'Toys', img: AppAssets().img3, number: '30'),
              //       _container(
              //           text: 'sports', img: AppAssets().img4, number: '10'),
              //       _container(
              //           text: 'Gym', img: AppAssets().img5, number: '20'),
              //     ],
              //   ),
              // ),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Categories(
                        img: AppAssets().img1,
                        text: 'Food',
                        number: '65',
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'All Categories',
                style: style16.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              // GridView(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       childAspectRatio:
              //           0.80, //You may have to calculate based on screen size
              //       crossAxisCount: 2),
              //   children: [
              //     Categories(img: AppAssets().img1, text: 'Food', number: '65'),
              //     _container(text: 'Food', img: AppAssets().img1, number: '7'),
              //     _container(text: 'Toys', img: AppAssets().img2, number: '30'),
              //     _container(
              //         text: 'sports', img: AppAssets().img3, number: '10'),
              //     _container(text: 'Gym', img: AppAssets().img6, number: '20'),
              //     _container(
              //         text: 'Electrition', img: AppAssets().img7, number: '7'),
              //     _container(
              //         text: 'Hotel', img: AppAssets().img3, number: '30'),
              //     _container(
              //         text: 'Car Service', img: AppAssets().img4, number: '10'),
              //     _container(text: 'Gym', img: AppAssets().img5, number: '20'),
              //     _container(
              //         text: 'Beauty', img: AppAssets().img5, number: '20'),
              //   ],
              // )

              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 1000,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.80, crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Categories(
                      img: AppAssets().img1,
                      text: 'Food',
                      number: '65',
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

_container(
    {required String img, required String text, required String number}) {
  return Container(
    margin: const EdgeInsets.all(8),
    // height: 139,
    width: 106,
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        color: pinkLightColor,
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: pinkDarkColor,
            child: Text(
              "$number",
              style: style14,
            ),
          ),
        ),
        Image.asset(
          img,
          scale: 4,
        ),
        Text(
          "$text",
          style: style16,
        ),
      ],
    ),
  );
}
