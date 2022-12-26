import 'package:work_api/data/datasources/api_client.dart';
import 'package:work_api/domain/models/companies_response.dart';
import 'package:work_api/domain/repository/companies_repository.dart';

class CompaniesRepositoryImpl implements CompaniesRepository {
  CompaniesRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  @override
  Future<CompaniesResponse> getCompanies() {
    return apiClient.getCompanies();
  }
}