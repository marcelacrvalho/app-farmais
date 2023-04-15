import '../features/farmais/authentication/presentation/authentication_view.dart';
import '../features/farmais/splash/presentation/views/splash_view.dart';

final myRoute = {
  '/': (context) => const MySplashView(),
  '/authentication': (context) => const AuthenticationView(),
};
