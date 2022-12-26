import 'package:work_api/data/datasources/api_client.dart';
import 'package:work_api/domain/models/jobs_response.dart';
import 'package:work_api/domain/repository/jobs_repository.dart';

class JobsRepositoryImpl implements JobsRepository {
  final ApiClient apiClient;

  JobsRepositoryImpl(this.apiClient);

  @override
  Future<JobsResponse> getJobs() {
    return apiClient.getJobs();
  }
}
