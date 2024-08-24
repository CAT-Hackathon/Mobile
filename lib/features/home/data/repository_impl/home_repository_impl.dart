import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/data/error/error_handler.dart';
import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/features/home/data/datasources/home_datasource.dart';
import 'package:met2ashara_app/features/home/data/models/company_model.dart';
import 'package:met2ashara_app/features/home/domain/repository/home_repository.dart';


@LazySingleton(as: HomeRepository)

class HomeRepositoryImpl with HandlingException implements HomeRepository {
  final HomeDatasource homeDatasource;

  HomeRepositoryImpl(this.homeDatasource);
  @override
  DataResponse<CompaniesResponse> getCompanies() {
    return homeDatasource.getCompanies().map((json)=>CompaniesResponse.fromJson(json));
  }
}
