import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedTabProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);
  void set(int? index) => state = index!;
}
