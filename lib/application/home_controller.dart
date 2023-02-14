import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<bool> showFloatingButtonProvider = StateProvider<bool>((ref) {
  return false;
});

class HomeController {
  final WidgetRef ref;

  HomeController({this.ref});

  showFloatingButton() {
    ref.read(showFloatingButtonProvider.notifier).state = true;
  }

  hideFloatingButton() {
    ref.read(showFloatingButtonProvider.notifier).state = false;
  }
}
