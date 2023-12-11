// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_messaging_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cloudMessagingServiceHash() =>
    r'2de9422b57fefdc989e43c42f999e90d862d2bbd';

/// See also [cloudMessagingService].
@ProviderFor(cloudMessagingService)
final cloudMessagingServiceProvider = Provider<CloudMessagingService>.internal(
  cloudMessagingService,
  name: r'cloudMessagingServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cloudMessagingServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CloudMessagingServiceRef = ProviderRef<CloudMessagingService>;
String _$initialMessageHash() => r'340ea149d115c1816aa68ca0bc114493dd4e1379';

/// See also [initialMessage].
@ProviderFor(initialMessage)
final initialMessageProvider =
    AutoDisposeFutureProvider<RemoteMessage?>.internal(
  initialMessage,
  name: r'initialMessageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initialMessageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InitialMessageRef = AutoDisposeFutureProviderRef<RemoteMessage?>;
String _$onMessageOpenedAppHash() =>
    r'0cfd51b907b4249345ec812fa69923b83ac443cb';

/// See also [onMessageOpenedApp].
@ProviderFor(onMessageOpenedApp)
final onMessageOpenedAppProvider =
    AutoDisposeStreamProvider<RemoteMessage>.internal(
  onMessageOpenedApp,
  name: r'onMessageOpenedAppProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$onMessageOpenedAppHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OnMessageOpenedAppRef = AutoDisposeStreamProviderRef<RemoteMessage>;
String _$notificationAutorizationStatusHash() =>
    r'05a1c8d4cb6485377cf63b7711b7db5fa4dc09ad';

/// See also [notificationAutorizationStatus].
@ProviderFor(notificationAutorizationStatus)
final notificationAutorizationStatusProvider =
    AutoDisposeFutureProvider<AuthorizationStatus>.internal(
  notificationAutorizationStatus,
  name: r'notificationAutorizationStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationAutorizationStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NotificationAutorizationStatusRef
    = AutoDisposeFutureProviderRef<AuthorizationStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
