import 'package:datespin/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDateCard extends ConsumerStatefulWidget {
  const AddDateCard({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddDateCardState();
}

class _AddDateCardState extends ConsumerState<AddDateCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: pinkTertiary,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Material(
          color: pinkTertiary,
          borderRadius: BorderRadius.circular(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Container(
                        color: pinkQuinary,
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
                        ),
                        child: const Text(
                          'Upload',
                          style: TextStyle(
                            color: pinkQuaternary,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Photos',
                        style: TextStyle(
                          color: pinkPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: pinkQuinary,
                      filled: true,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: pinkQuaternary,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: pinkQuinary,
                      filled: true,
                      hintText: 'Age',
                      hintStyle: TextStyle(
                        color: pinkQuaternary,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: pinkQuinary,
                      filled: true,
                      hintText: 'Other discription',
                      hintStyle: TextStyle(
                        color: pinkQuaternary,
                      ),
                    ),
                  ),
                ),
                Container(
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
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
