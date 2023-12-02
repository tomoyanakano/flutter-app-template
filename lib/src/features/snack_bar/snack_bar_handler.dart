import 'package:flutter_app_template/src/features/snack_bar/snack_bar_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class SnackBarHandler extends ConsumerWidget {
  const SnackBarHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(snackBarNotifierProvider, (_, state) {
      if (state.message.isEmpty) return;
      final controller = ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                state.message,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              state.action != null
                  ? GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        state.action!();
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );

      controller.closed.then((reason) {
        ref.read(snackBarNotifierProvider.notifier).clear();
      });
    });

    return const SizedBox();
  }
}
