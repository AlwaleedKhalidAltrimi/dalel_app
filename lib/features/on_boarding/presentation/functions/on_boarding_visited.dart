import '../../../../core/services/app_services.dart';

void onBoardingVisited(AppServices appServices) {
  appServices.sharedprf.setBool('isOnBoardingVisited', true);
}
