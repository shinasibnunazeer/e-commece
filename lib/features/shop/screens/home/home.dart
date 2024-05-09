import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce/common/widgets/image_text_widgets/vertical_image_text_widget.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_couter_icon.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:e_commerce/utils/const/colors.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderConatiner(
              child: Column(
                children: [
                  //appbar
                  const EHomeAppBar(),
                  //search bar
                  const ESerachContainer(
                    text: "Serch for products",
                    icon: Icons.search,
                    showBackground: true,
                    showBorder: true,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      children: [
                        const ESectionHeading(
                          title: "Popular Categories",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return VerticalImageText(
                                  icon: Icons.access_alarm,
                                  text: "Watches",
                                  onPressed: () {},
                                );
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
