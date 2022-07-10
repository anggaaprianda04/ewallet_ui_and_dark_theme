import 'package:ewallet_slicing_ui/pages/provider/theme_service.dart';
import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:ewallet_slicing_ui/widget/item_tokens.dart';
import 'package:ewallet_slicing_ui/widget/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);

    Widget header() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                themeService.darkTheme = !themeService.darkTheme;
              },
              child:
                  Icon(themeService.darkTheme ? Icons.sunny : Icons.dark_mode)),
          Text(
            'Wallet',
            style: themeService.darkTheme
                ? blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: bold, color: Colors.white)
                : blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
          ),
          const Icon(
            Icons.center_focus_strong,
            size: 24,
          )
        ]),
      );
    }

    Widget totalBalance() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            Text(
              'Total Balance',
              style: themeService.darkTheme
                  ? blackTextStyle.copyWith(
                      fontWeight: medium, color: Colors.white)
                  : greyTextStyle.copyWith(fontWeight: medium),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '\$2,663.56',
              style: themeService.darkTheme
                  ? blackTextStyle.copyWith(
                      fontSize: 32, fontWeight: bold, color: Colors.white)
                  : blackTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            )
          ],
        ),
      );
    }

    Widget menuButtons() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        margin: const EdgeInsets.only(top: 32, bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MenuButton(
              image: 'assets/icon/Icon_Send.png',
              title: 'Send',
            ),
            MenuButton(
              image: 'assets/icon/Icon_Get.png',
              title: 'Receive',
            ),
            MenuButton(
              image: 'assets/icon/Icon_buy.png',
              title: 'Buy',
            ),
            MenuButton(
              image: 'assets/icon/Icon_Swap.png',
              title: 'Swap',
            ),
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        width: double.infinity,
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 16),
        decoration: BoxDecoration(
          color: themeService.darkTheme ? Colors.black54 : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(16)),
              child: TabBar(
                  unselectedLabelColor: blackColor,
                  indicator: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(16)),
                  tabs: [
                    Tab(
                      child: Text(
                        'Tokens',
                        style: TextStyle(fontWeight: semiBold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'NFTs',
                        style: TextStyle(fontWeight: semiBold, fontSize: 16),
                      ),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: SizedBox(
                height: 270,
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ItemToken(
                          img: 'assets/Icon_Near.png',
                          title: 'Near',
                          price: '\$6.34',
                          textStyle: greenTextStyle.copyWith(),
                          percent: '^ 2.5%',
                          titleAmount: '198.24 NEAR',
                          amount: '\$1251.44',
                        ),
                        ItemToken(
                          img: 'assets/Icon_Octopus.png',
                          title: 'Octopus Network',
                          price: '\$0.71',
                          textStyle: greenTextStyle.copyWith(),
                          percent: '^ 3.87%',
                          titleAmount: '0.6317 OCT',
                          amount: '\$0.71',
                        ),
                        ItemToken(
                          img: 'assets/Icon_deip.png',
                          title: 'DEIP Token',
                          price: '\$0.71',
                          textStyle: redTextStyle.copyWith(),
                          percent: ' 0.97%',
                          titleAmount: '555.94874 DEIP',
                          amount: '\$1.76',
                        ),
                        ItemToken(
                          img: 'assets/Icon_aurora.png',
                          title: 'Aurora',
                          price: '\$3.79',
                          textStyle: redTextStyle.copyWith(),
                          percent: ' 0.32%',
                          titleAmount: '300 Aurora',
                          amount: '\$1137',
                        ),
                        ItemToken(
                          img: 'assets/Icon_usn.png',
                          title: 'USN',
                          price: '\$1.33',
                          textStyle: greenTextStyle.copyWith(),
                          percent: '^ 38.76%',
                          titleAmount: '205 USN',
                          amount: '\$272.65',
                        ),
                      ],
                    ),
                    const Center(child: Text('NFT')),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          body: Column(
            children: [
              header(),
              totalBalance(),
              menuButtons(),
              tabBar(),
            ],
          ),
        ),
      ),
    );
  }
}
