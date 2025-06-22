import 'package:fruits_app/features/splash_view/data/repo/splash_repo.dart';

class SplashRepoImpl implements SplashRepo {
  @override
  navigateToHome(context) {
    Future.delayed(const Duration(seconds: 3));
  }
}
