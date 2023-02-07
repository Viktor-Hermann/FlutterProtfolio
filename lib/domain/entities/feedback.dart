import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic, role, company;
  final int id;
  final Color color;

  Feedback(
      {this.name,
      this.review,
      this.userPic,
      this.id,
      this.color,
      this.role,
      this.company});
}

