import 'package:flutter/material.dart';

class CustomFeedback {
  final String name, review, userPic, role, company;
  final int id;
  final Color color;

  CustomFeedback(
      {this.name,
      this.review,
      this.userPic,
      this.id,
      this.color,
      this.role,
      this.company});
}

