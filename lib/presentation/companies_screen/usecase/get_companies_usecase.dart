import 'package:work_api/domain/models/companies_response.dart';
import 'package:work_api/domain/repository/companies_repository.dart';
import 'package:work_api/domain/usecase/usecase.dart';

class GetCompaniesUsecase extends NoParamsUseCase<CompaniesResponse> {
  GetCompaniesUsecase({
    required this.repository,
  });

  final CompaniesRepository repository;

  @override
  Future<CompaniesResponse> call() {
    return repository.getCompanies();
  }
}
