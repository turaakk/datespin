import 'package:animations/animations.dart';
import 'package:datespin/pages/settings.dart';
import 'package:datespin/providers/dates.dart';
import 'package:datespin/providers/selected_tab.dart';
import 'package:datespin/theme/colors.dart';
import 'package:datespin/widgets/add_date_card.dart';
import 'package:datespin/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DateSpin extends ConsumerStatefulWidget {
  const DateSpin({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DateSpinState();
}

class _DateSpinState extends ConsumerState<DateSpin> {
  @override
  Widget build(BuildContext context) {
    final dates = ref.watch(datesProvider);
    final selectedTab = ref.watch(selectedTabProvider);

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: pinkSenary,
          body: SingleChildScrollView(
            child: selectedTab == 2
                ? SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const Settings(),
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 400,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              showModal(
                                context: context,
                                builder: (context) {
                                  return const AddDateCard();
                                },
                              );
                            },
                            child: Container(
                              width: 200,
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: pinkSecondary,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 3,
                                  color: pinkPrimary,
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/add.svg'),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      'Add a date',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const AppTabBar(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const TabBarView(
                          children: [
                            Text(''),
                            Text(''),
                            Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
