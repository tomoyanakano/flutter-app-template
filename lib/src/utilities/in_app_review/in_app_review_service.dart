import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_review/in_app_review.dart';

final inAppReviewServiceProvider =
    Provider((ref) => InAppReviewService(InAppReview.instance));

class InAppReviewService {
  InAppReviewService(this.inAppReview);
  final InAppReview inAppReview;

  Future<void> requestReview() async {
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }
}
