import 'package:work_api/domain/models/company_jobs_response.dart';
import 'package:work_api/domain/repository/company_jobs_repository.dart';
import 'package:work_api/domain/usecase/usecase.dart';

class GetCompanyJobsUsecase extends UseCase<CompanyJobsResponse, String> {
  GetCompanyJobsUsecase({required this.repository});

  final CompanyJobsRepository repository;

  @override
  Future<CompanyJobsResponse> call(String params) {
    return repository.getCompanyJobs(params);
  }
}
