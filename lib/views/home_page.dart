import 'package:flutter/material.dart';
import 'package:contract/views/const/colors.dart';
import 'package:contract/views/main/main_page.dart';
import 'package:contract/views/const/text_styles.dart';
import 'package:contract/views/market/market_page.dart';
import 'package:contract/views/history/history_page.dart';
import 'package:contract/views/profile/profile_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:contract/views/new_contract/new_contract_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNav = 0;

  void changeNav(int newIndex) {
    bottomNav = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (bottomNav == 0) {
          return const MainPage();
        } else if (bottomNav == 1) {
          return const HistoryPage();
        } else if (bottomNav == 3) {
          return const MarketPage();
        } else if (bottomNav == 4) {
          return const ProfilePage();
        }
        return const NewContractPage();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeNav(2),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeNav,
        currentIndex: bottomNav,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.main,
        selectedLabelStyle: TextStyles.main14,
        unselectedLabelStyle: TextStyles.bluegrey14,
        items: [
          BottomNavigationBarItem(
            label: tr('main'),
            icon: const Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: tr('history'),
            icon: const Icon(Icons.history_edu),
          ),
          BottomNavigationBarItem(
            label: tr('new'),
            icon: const SizedBox(height: 24),
          ),
          BottomNavigationBarItem(
            label: tr('market'),
            icon: const Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            label: tr('profile'),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
