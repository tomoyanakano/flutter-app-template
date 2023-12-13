import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Root extends HookConsumerWidget {
  Root(this.index, {Key? key}) : super(key: key);

  final int index;

  final List<Map<String, dynamic>> screens = [
    <String, dynamic>{
      'screen': const SizedBox(),
      'screenName': '',
    },
    <String, dynamic>{
      'screen': const SizedBox(),
      'screenName': '',
    },
    <String, dynamic>{
      'screen': const SizedBox(),
      'screenName': '',
    },
    <String, dynamic>{
      'screen': const SizedBox(),
      'screenName': '',
    },
    <String, dynamic>{
      'screen': const SizedBox(),
      'screenName': '',
    }
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = useState(index);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          state.value = value;
        },
        selectedIndex: state.value,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: '1',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: '2',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: '3',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: '4',
          ),
        ],
      ),
      body: screens[state.value]['screen'],
    );
  }
}
