import 'package:flutter/material.dart';
import 'package:flutter_bottom_navy_bar/src/controller.dart';
import 'package:flutter_bottom_navy_bar/src/model.dart';

class BottomNavyBar extends StatelessWidget {
  final BottomNavyController controller;
  final List<BottomNavyBarItem> items;
  final double iconSize;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final double itemSpacing;
  final Color backgroundColor;

  const BottomNavyBar({
    super.key,
    required this.controller,
    required this.items,
    required this.iconSize,
    required this.itemSpacing,
    required this.backgroundColor,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Container(
          color: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: itemSpacing),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {
              final item = items[index];
              final selected = controller.index == index;

              return InkWell(
                onTap: item.enabled
                    ? () => controller.changeIndex(index)
                    : null,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Icon(
                          item.icon,
                          size: iconSize,
                          color: selected ? item.activeColor : Colors.grey,
                        ),

                        if (item.badgeCount != null)
                          Positioned(
                            right: 18,
                            top: 12,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                item.badgeCount.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    Text(
                      item.title,
                      style: selected
                          ? selectedLabelStyle
                          : unselectedLabelStyle,
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
