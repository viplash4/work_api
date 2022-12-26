import 'package:work_api/domain/models/job.dart';

class CompanyJobsResponse {
  CompanyJobsResponse(this.result);

  final List<Job> result;
}