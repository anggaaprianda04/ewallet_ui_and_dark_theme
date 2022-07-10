import 'package:ewallet_slicing_ui/pages/provider/theme_service.dart';
import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuButton extends StatelessWidget {
  final String image;
  final String title;
  const MenuButton({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeService themeService = Provider.of<ThemeService>(context);

    return Column(children: [
      Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
            color: blackColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Image.asset(
            image,
            width: 24,
          ),
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        title,
        style: themeService.darkTheme
            ? blackTextStyle.copyWith(fontWeight: medium, color: Colors.white)
            : blackTextStyle.copyWith(fontWeight: medium),
      )
    ]);
  }
}
