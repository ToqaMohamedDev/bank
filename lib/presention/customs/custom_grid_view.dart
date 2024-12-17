import 'package:flutter/material.dart';
import 'package:nagaretto/presention/customs/scale_animation_item.dart';
import 'constants.dart';

class CustomGridView extends StatelessWidget {
  List<Widget> children;
  CustomGridView({
    super.key,
    required this.children,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: (width(context) / 360).floor() < 1
            ? 400
            : (400 * (width(context) / 360).floor()).toDouble(),
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ScaleAnimationItem(
              index: index,
              child: children[index], // يتم تمرير العنصر بناءً على الـ index
            );
          },
          shrinkWrap: true,
          itemCount: children.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1,
            crossAxisCount: (width(context) / 360).floor() < 1
                ? 3
                : (width(context) / 360).floor().toInt() * 3,
          ),
        ),
      ),
    );
  }
}
