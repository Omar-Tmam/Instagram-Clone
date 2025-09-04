import 'package:flutter/material.dart';

class DrawerModel {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  const DrawerModel({
    required this.text,
    required this.icon,
    this.onTap,
  });
}