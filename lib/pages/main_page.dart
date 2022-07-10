import 'package:ewallet_slicing_ui/pages/history_page.dart';
import 'package:ewallet_slicing_ui/pages/profile_page.dart';
import 'package:ewallet_slicing_ui/pages/provider/page_provider.dart';
import 'package:ewallet_slicing_ui/pages/provider/theme_service.dart';
import 'package:ewallet_slicing_ui/pages/staking_page.dart';
import 'package:ewallet_slicing_ui/pages/wallet_page.dart';
import 'package:ewallet_slicing_ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    ThemeService themeService = Provider.of<ThemeService>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget customNavigationBar() {
      return BottomNavigationBar(
          currentIndex: pageProvider.currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            pageProvider.currentIndex = value;
          },
          backgroundColor:
              themeService.darkTheme ? Colors.grey[900] : Colors.white,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Image.asset(
                    themeService.darkTheme
                        ? 'assets/icon/Icon_wallet_white.png'
                        : 'assets/icon/Icon_wallet (1).png',
                    width: 24,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Wallet',
                    style: themeService.darkTheme
                        ? greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 0 ? bold : medium,
                            color: Colors.white)
                        : greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 0 ? bold : medium),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Image.asset(
                    themeService.darkTheme
                        ? 'assets/icon/Icon_stacking_white.png'
                        : 'assets/icon/Icon_stacking.png',
                    width: 24,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Staking',
                    style: themeService.darkTheme
                        ? greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 1 ? bold : medium,
                            color: Colors.white)
                        : greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 1 ? bold : medium),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Image.asset(
                    themeService.darkTheme
                        ? 'assets/icon/Icon_profile_white.png'
                        : 'assets/icon/Icon_profile.png',
                    width: 24,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Profile',
                    style: themeService.darkTheme
                        ? greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 2 ? bold : medium,
                            color: Colors.white)
                        : greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 2 ? bold : medium),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Image.asset(
                    themeService.darkTheme
                        ? 'assets/icon/Icon_history_white.png'
                        : 'assets/icon/Icon_history.png',
                    width: 24,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'History',
                    style: themeService.darkTheme
                        ? greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 3 ? bold : medium,
                            color: Colors.white)
                        : greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight:
                                pageProvider.currentIndex == 3 ? bold : medium),
                  )
                ],
              ),
            )
          ]);
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return const WalletPage();
        case 1:
          return const StakingPage();
        case 2:
          return const ProfilePage();
        case 3:
          return const HistoryPage();
        default:
          return const WalletPage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: customNavigationBar(),
    );
  }
}
