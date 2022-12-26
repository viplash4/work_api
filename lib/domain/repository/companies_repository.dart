import 'package:work_api/domain/models/companies_response.dart';

abstract class CompaniesRepository {
  Future<CompaniesResponse> getCompanies();
}