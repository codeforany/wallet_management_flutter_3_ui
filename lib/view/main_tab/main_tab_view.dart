import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';
import 'package:wallet_management/common_widget/app_bar_view.dart';
import 'package:wallet_management/common_widget/tab_button.dart';
import 'package:wallet_management/view/home/home_view.dart';

import '../blank_view.dart';
import '../transaction/transaction_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;

  List<Widget> listScreens = [];
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = const HomeView();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listScreens = [
      const HomeView(),
      const TransactionView(),
      const BlankView(),
      const BlankView()
    ];

    currentTab = listScreens.first;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarView(),
      body: PageStorage(bucket: pageBucket, child: currentTab),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: TColor.primary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, -1),
            )
          ],
        ),
        child: SafeArea(
          child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabButton(
                    icon: Icons.home_outlined,
                    isSelect: selectTab == 0,
                    onPressed: () {
                      setState(() {
                        currentTab = const HomeView();
                        selectTab = 0;
                      });
                    }),
                TabButton(
                    icon: Icons.sync_alt,
                    isSelect: selectTab == 1,
                    onPressed: () {
                      setState(() {
                        currentTab = const TransactionView();
                        selectTab = 1;
                      });
                    }),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: TColor.secondary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.add,
                      color: TColor.primary,
                      size: 35,
                    ),
                  ),
                ),
                TabButton(
                    icon: Icons.pie_chart_outline,
                    isSelect: selectTab == 2,
                    onPressed: () {
                      setState(() {
                        currentTab = const BlankView();
                        selectTab = 2;
                      });
                    }),
                TabButton(
                    icon: Icons.settings_outlined,
                    isSelect: selectTab == 3,
                    onPressed: () {
                      setState(() {
                        currentTab = const BlankView();
                        selectTab = 3;
                      });
                    }),
              ],
            
          ),
        ),
      ),
    );
  }
}
