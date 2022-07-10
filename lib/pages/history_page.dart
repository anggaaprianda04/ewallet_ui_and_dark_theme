import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'History Page',
          style: greyTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
    );
  }
}
