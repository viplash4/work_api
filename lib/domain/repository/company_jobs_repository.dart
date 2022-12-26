import 'package:work_api/domain/models/company_jobs_response.dart';

abstract class CompanyJobsRepository {
  Future<CompanyJobsResponse> getCompanyJobs(String id);
}