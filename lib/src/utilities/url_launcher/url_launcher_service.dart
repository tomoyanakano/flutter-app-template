import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'url_launcher_service.g.dart';

class UrlLauncherService {
  UrlLauncherService(this.ref);
  final Ref ref;

  Future<void> launchFromUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}

@riverpod
UrlLauncherService urlLauncherService(Ref ref) => UrlLauncherService(ref);
