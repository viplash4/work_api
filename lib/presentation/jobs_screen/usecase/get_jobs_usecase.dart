import 'package:work_api/domain/models/jobs_response.dart';
import 'package:work_api/domain/repository/jobs_repository.dart';
import 'package:work_api/domain/usecase/usecase.dart';

class GetJobsUsecase extends NoParamsUseCase<JobsResponse> {
  GetJobsUsecase({
    required this.repository,
  });

  final JobsRepository repository;

  @override
  Future<JobsResponse> call() {
    return repository.getJobs();
  }
}

