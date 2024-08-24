import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/data/client/api_client.dart';
import 'package:met2ashara_app/core/secrets/remote_urls.dart';

abstract interface class HomeDatasource {
  Future<Response> getCompanies();
}

@LazySingleton(as: HomeDatasource)
class HomeDataSourceImpl implements HomeDatasource {
  ApiClient client;

  HomeDataSourceImpl(this.client);
  @override
  Future<Response> getCompanies() {
    return client.get(RemoteUrls.companies);
  }
}
