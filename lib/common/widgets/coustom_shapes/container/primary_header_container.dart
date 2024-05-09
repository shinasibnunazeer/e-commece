import 'package:e_commerce/common/widgets/coustom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce/utils/const/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderConatiner extends StatelessWidget {
  const EPrimaryHeaderConatiner({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ECurvedEdgeWidget(
      child: Container(
        //padding 0
        padding: const EdgeInsets.only(bottom: 0),

        color: EColors.primaryColor,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
