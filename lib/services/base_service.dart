import 'package:stacked_starter_template/app/supabase_client.dart';

abstract class BaseService<T> {
  String tableName();

  Future<T>? all() async {
    final response = await Supabase.client.from("servers").execute();

    print(response.status);

    if (response.status == 500) {
      print('Error Occurred :(');
      print(response.toJson());
    }

    return response.data;
  }
}
