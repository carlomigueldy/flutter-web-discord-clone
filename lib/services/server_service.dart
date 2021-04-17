import 'package:stacked_starter_template/services/base_service.dart';

class ServerService extends BaseService<dynamic> {
  @override
  String tableName() {
    return "servers";
  }
}
