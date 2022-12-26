import 'package:work_api/data/datasources/api_client.dart';
import 'package:work_api/domain/models/company_jobs_response.dart';
import 'package:work_api/domain/repository/company_jobs_repository.dart';

class CompanyJobsRepositoryImpl implements CompanyJobsRepository {
  CompanyJobsRepositoryImpl(this.apiClient);

  final ApiClient apiClient;

  @override
  Future<CompanyJobsResponse> getCompanyJobs(String id) {
    return apiClient.getCompanyJobs(id);
  }
}