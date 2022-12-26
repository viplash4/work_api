import 'package:dio/dio.dart';
import 'package:work_api/data/entity/companies_response_entity.dart';
import 'package:work_api/data/entity/company_jobs_response_entity.dart';
import 'package:work_api/data/entity/jobs_response_entity.dart';
import 'package:retrofit/retrofit.dart';

// flutter pub run build_runner build
part 'api_client.g.dart';

@RestApi(baseUrl: 'http://3.75.134.87/flutter/v1/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/jobs')
  Future<JobsResponseEntity> getJobs();

  @GET('/companies')
  Future<CompaniesResponseEntity> getCompanies();

  @GET('/companies/{company_id}/jobs/')
  Future<CompanyJobsResponseEntity> getCompanyJobs(
      @Path("company_id") String id);
}
