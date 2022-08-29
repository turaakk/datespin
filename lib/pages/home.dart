import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DateSpin extends ConsumerStatefulWidget {
  const DateSpin({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DateSpinState();
}

class _DateSpinState extends ConsumerState<DateSpin> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF0099),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 3,
                            color: const Color(0xFFFF005C),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/add.svg'),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
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
                SizedBox(
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
                      setState(() {
                        _selectedTab = index;
                      });
                    },
                    tabs: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        color: _selectedTab == 0
                            ? const Color(0xFFFF0099)
                            : Colors.white,
                        child: const Text('Dates'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        color: _selectedTab == 1
                            ? const Color(0xFFFF0099)
                            : Colors.white,
                        child: const Text('History'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        color: _selectedTab == 2
                            ? const Color(0xFFFF0099)
                            : Colors.white,
                        child: const Text('Settings'),
                      ),
                    ],
                  ),
                ),
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
