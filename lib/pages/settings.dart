import 'package:datespin/providers/selected_tab.dart';
import 'package:datespin/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        tag: 'to-settings',
        child: Scaffold(
          backgroundColor: pinkSenary,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      ref.read(selectedTabProvider.notifier).set(0);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.arrow_back_ios),
                    ),
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
