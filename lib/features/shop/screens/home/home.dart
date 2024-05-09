import 'package:e_commerce/common/widgets/coustom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce/utils/const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            EPrimaryHeaderConatiner(
              child: Container()
            )
          ],
        ),
      ),
    );
  }
}
