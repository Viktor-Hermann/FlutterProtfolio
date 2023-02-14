import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/application/topsection/menu_controller.dart';

import '../../../utils/constants.dart';

class MenuHorizontal extends ConsumerWidget {
  const MenuHorizontal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuItems = getMenuList(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: MediaQuery.of(context).size.width,
      height: 54,
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
          (index) => buildMenuItem(index, ref),
        ),
      ),
    );
  }
}

Widget buildMenuItem(int index, WidgetRef ref) {
  final menuItems = getMenuList(ref.context);
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
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Text(
            menuItems[index],
            style: TextStyle(fontSize: 20, color: kTextColor),
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
