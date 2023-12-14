
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/common_widgets/loading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LazyLoading extends HookWidget {
  const LazyLoading({
    required this.slivers,
    required this.onEndOfPage,
    this.skelton,
    this.scrollOffset = 2000,
    Key? key,
  }) : super(key: key);

  final List<Widget> slivers;
  final Future<void> Function() onEndOfPage;
  final Widget? skelton;
  final int scrollOffset;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final scrollController = useScrollController();

    Future<void> fetchAfter() async {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - scrollOffset) {
        if (isLoading.value) return;
        isLoading.value = true;
        await onEndOfPage();
        isLoading.value = false;
      }
    }

    useEffect(
      () {
        scrollController.addListener(() async => fetchAfter());
        return () => scrollController.removeListener(() async => fetchAfter());
      },
      [scrollController],
    );

    return CustomScrollView(
      controller: scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        ...slivers,
        if (isLoading.value)
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            sliver: skelton ?? const SliverToBoxAdapter(child: Loading()),
          ),
      ],
    );
  }
}
