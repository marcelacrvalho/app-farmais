import '../farmais/features/authentication/presentation/views/authentication_view.dart';
import '../farmais/features/stepper/presentation/views/stepper_view.dart';

final myRoute = {
  '/stepper': (context) => const StepperView(),
  '/authentication': (context) => const AuthenticationView(),
};
