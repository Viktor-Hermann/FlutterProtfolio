import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/application/topsection/menu_controller.dart';

import '../../../utils/constants.dart';

class MenuHorizontal extends ConsumerWidget {
  const MenuHorizontal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuItems = getMenuListAsStrings(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: Adaptive.w(100),
      height: Adaptive.h(7),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey[200],
            Colors.white,
          ],
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItemDesktop(index, ref),
        ),
      ),
    );
  }
}

Widget buildMenuItemDesktop(int index, WidgetRef ref) {
  final menuItems = getMenuListAsStrings(ref.context);
  int selectedIndex = ref.watch(selectedIndexProvider);
  int hoverIndex = ref.watch(hoverIndexProvider);

  MenuHorizontalController menuController = MenuHorizontalController(ref: ref);
  return InkWell(
    onTap: () {
      menuController.onSelect(index);
    },
    onHover: (value) {
      menuController.onHover(value, index);
    },
    child: Container(
      height: Adaptive.h(10),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Text(
            menuItems[index],
            style: TextStyle(fontSize: Adaptive.sp(13), color: kTextColor),
          ),
          // Hover
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex != index && hoverIndex == index ? -3 : -32,
            child: Container(
              height: 6,
              color: Color(0xFF596a94),
            ),
          ),
          // Select
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -3 : -32,
            child: Container(
              height: 6,
              color: Color(0xFF596a94),
            ),
          ),
        ],
      ),
    ),
  );
}
