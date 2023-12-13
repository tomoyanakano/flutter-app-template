import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

part 'firebase_analytics_service.g.dart';

class FirebaseAnalyticsService {
  FirebaseAnalyticsService(this.ref, this.instance);
  final Ref ref;
  final FirebaseAnalytics instance;

  /// log event
  Future<void> logEvent(
      {required String name, Map<String, dynamic>? parameters}) async {
    await instance.logEvent(name: name, parameters: parameters);
  }

  late FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: instance);

  /// log app open event
  void setUserProperties({
    required String name,
    required String value,
  }) {
    instance.setUserProperty(name: name, value: value);
  }

  /// set current user id
  void setUserId(String id) => instance.setUserId(id: id);

  /// set current screen
  void setCurrentScreen(String screenName) =>
      instance.setCurrentScreen(screenName: screenName);

  /// log search event
  void logSearch(String keyword) => instance.logSearch(searchTerm: keyword);

  /// log view search results event
  void logViewSearchResults(String keyword) =>
      instance.logViewSearchResults(searchTerm: keyword);

  /// log login event
  void logLogin(String loginMethod) =>
      instance.logLogin(loginMethod: loginMethod);

  /// log sign up event
  void logSignUp(String signUpMethod) =>
      instance.logSignUp(signUpMethod: signUpMethod);

  /// log tutorial begin event
  void logTutorialBegin() => instance.logTutorialBegin();

  /// log tutorial complete event
  void logTutorialComplete() => instance.logTutorialComplete();

  /// コンテンツの選択 ※購買行動にあたる商品選択は下記の selectItem を使用する
  void logSelectContent({
    required String contentType,
    required String itemId,
  }) =>
      instance.logSelectContent(
        contentType: contentType,
        itemId: itemId,
      );
}

@Riverpod(keepAlive: true)
FirebaseAnalyticsService firebaseAnalyticsService(Ref ref) =>
    FirebaseAnalyticsService(ref, FirebaseAnalytics.instance);
