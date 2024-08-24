import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:met2ashara_app/core/resources/cubit_status.dart';
import 'package:met2ashara_app/features/home/data/models/company_model.dart';
import 'package:met2ashara_app/features/home/domain/repository/home_repository.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(const HomeState());

  final HomeRepository homeRepository;

  Future<void> getCompanies() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final companies = await homeRepository.getCompanies();
    companies.fold((failure) {
      emit(
          state.copyWith(status: CubitStatus.failed, message: failure.message));
    }, (data) {
      emit(
          state.copyWith(status: CubitStatus.success, companiesResponse: data));
    });
  }
}
