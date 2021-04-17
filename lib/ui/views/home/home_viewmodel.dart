import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/app/app.locator.dart';
import 'package:stacked_starter_template/app/app.router.dart';
import 'package:stacked_starter_template/services/server_service.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final _serverService = locator<ServerService>();

  toAboutView() {
    navigationService.navigateTo(Routes.aboutView);
  }

  void toDemoListView() {
    navigationService.navigateTo(Routes.demoListView);
  }

  void toSingleItemView() {
    navigationService.navigateTo(Routes.singleItemView);
  }

  Future<dynamic> getData() async {
    final data = await _serverService.all();

    print(data);
  }
}
