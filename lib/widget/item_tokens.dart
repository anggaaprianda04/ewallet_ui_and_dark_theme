import 'package:ewallet_slicing_ui/pages/provider/theme_service.dart';
import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemToken extends StatelessWidget {
  final String img, title, price, titleAmount, percent, amount;
  final TextStyle textStyle;
  const ItemToken(
      {Key? key,
      required this.img,
      required this.title,
      required this.amount,
      required this.percent,
      required this.price,
      required this.textStyle,
      required this.titleAmount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeService themeService = Provider.of<ThemeService>(context);

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Image.asset(
                img,
                width: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: themeService.darkTheme
                          ? blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                              color: Colors.white)
                          : blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          price,
                          style: greyTextStyle.copyWith(fontSize: 12),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          percent,
                          style: textStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    titleAmount,
                    style: themeService.darkTheme
                        ? blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: Colors.white)
                        : blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    amount,
                    style: greyTextStyle.copyWith(fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Divider(
          color: greyColor,
          height: 2.0,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
