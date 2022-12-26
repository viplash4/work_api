
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_api/domain/models/companies_response.dart';
import 'package:work_api/domain/models/company.dart';
import 'package:work_api/presentation/companies_screen/usecase/get_companies_usecase.dart';

part 'companies_screen_state.dart';

class CompaniesScreenCubit extends Cubit<CompaniesScreenState> {
  CompaniesScreenCubit({required this.getCompaniesUsecase})
      : super(CompaniesScreenInitial());

  final GetCompaniesUsecase getCompaniesUsecase;

  Future<void> getAllCompanies() async {
    try {
      final CompaniesResponse response = await getCompaniesUsecase.call();
      final List<Company> companies = response.result;
      emit(CompaniesScreenLoaded(companiesList: companies));
    } catch (e) {
      emit(CompaniesScreenError(e.toString()));
    }
  }
}
