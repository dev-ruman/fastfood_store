import 'package:flutter/material.dart';

class IndividualTab extends StatelessWidget {
  final String iconPath;
  const IndividualTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Image.asset(
        iconPath,
        color: Colors.grey[800],
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
    );
  }
}
