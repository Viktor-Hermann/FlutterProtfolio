import 'package:flutter/material.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  final String iconSrc;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
