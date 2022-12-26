import 'package:work_api/data/entity/company_entity.dart';
import 'package:work_api/domain/models/companies_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'companies_response_entity.g.dart';

@JsonSerializable()
class CompaniesResponseEntity implements CompaniesResponse {
  CompaniesResponseEntity(this.result);

  factory CompaniesResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CompaniesResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesResponseEntityToJson(this);

  @override
  @JsonKey(name: 'result')
  final List<CompanyEntity> result;
}
