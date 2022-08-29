import 'package:datespin/models/date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final datesProvider = StateNotifierProvider<Setter, List<Date>>((ref) {
  return Setter();
});

class Setter extends StateNotifier<List<Date>> {
  Setter() : super([]);
  void set(List<Date>? dates) => state = dates!;
}
