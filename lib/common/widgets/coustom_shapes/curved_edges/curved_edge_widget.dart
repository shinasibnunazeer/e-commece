


import 'package:e_commerce/common/widgets/coustom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class ECurvedEdgeWidget extends StatelessWidget {
  const ECurvedEdgeWidget({
    super.key, this.child,
  });

final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECoustomCurvedEdges(),
      child:child
    );
  }
}
