import 'package:datespin/providers/selected_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTabBar extends ConsumerStatefulWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppTabBarState();
}

class _AppTabBarState extends ConsumerState<AppTabBar> {
  @override
  Widget build(BuildContext context) {
    final selectedTab = ref.watch(selectedTabProvider);

    return SizedBox(
      height: 50,
      child: TabBar(
        isScrollable: true,
        overlayColor: MaterialStateProperty.all(Colors.white),
        labelPadding: const EdgeInsets.all(0),
        indicatorColor: Colors.transparent,
        unselectedLabelColor: const Color(0xFFFF0099),
        labelStyle: const TextStyle(
          fontSize: 20,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 20,
        ),
        onTap: (index) {
          ref.read(selectedTabProvider.notifier).set(index);
        },
        tabs: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            color: selectedTab == 0 ? const Color(0xFFFF0099) : Colors.white,
            child: const Text('Dates'),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            color: selectedTab == 1 ? const Color(0xFFFF0099) : Colors.white,
            child: const Text('History'),
          ),
          Hero(
            tag: 'to-settings',
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              color: selectedTab == 2 ? const Color(0xFFFF0099) : Colors.white,
              child: const Text('Settings'),
            ),
          ),
        ],
      ),
    );
  }
}
