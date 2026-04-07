import 'package:flutter/material.dart';

class BottomNavyBarItem {
  final IconData icon;
  final String title;
  final Color activeColor;
  final int? badgeCount;
  final bool enabled;

  BottomNavyBarItem({
    required this.icon,
    required this.title,
    required this.activeColor,
    this.badgeCount,
    this.enabled = true,
  });
}