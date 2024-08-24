import 'package:met2ashara_app/core/resources/type_defs.dart';
import 'package:met2ashara_app/features/home/data/models/company_model.dart';

abstract class HomeRepository {
  DataResponse<CompaniesResponse> getCompanies();
}
