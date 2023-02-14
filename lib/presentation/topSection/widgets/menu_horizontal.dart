import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';

import '../../../utils/constants.dart';

class MenuHorizontal extends ConsumerWidget {
  const MenuHorizontal({Key key}) : super(key: key);

class _MenuHorizontalState extends State<MenuHorizontal> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    '',
    S.current.menuHome,
    S.current.menuAboutMe,
    S.current.menuServices,
    S.current.menuMyProjects,
    S.current.menuFeedback,
    S.current.menuContact,
    ''
  ];
  @override
  Widget build(BuildContext context) {
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
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
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
                bottom:
                    selectedIndex != index && hoverIndex == index ? -5 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -1 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
