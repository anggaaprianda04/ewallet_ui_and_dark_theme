import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';

class StakingPage extends StatelessWidget {
  const StakingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page Staking',
          style: greyTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
    );
  }
}
