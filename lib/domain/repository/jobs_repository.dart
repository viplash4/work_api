import 'package:work_api/domain/models/jobs_response.dart';

abstract class JobsRepository {
  Future<JobsResponse> getJobs();
}