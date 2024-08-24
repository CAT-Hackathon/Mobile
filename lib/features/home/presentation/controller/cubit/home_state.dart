part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState(
      {this.status = CubitStatus.init,
      this.message = '',
      this.companiesResponse = const CompaniesResponse.empty(),
      });

  final CubitStatus status;
  final String message;
  final CompaniesResponse companiesResponse;

  HomeState copyWith({
    CubitStatus? status,
    String? message,
    CompaniesResponse? companiesResponse,

  }) {
    return HomeState(
      status: status ?? this.status,
      message: message ?? this.message,
      companiesResponse: companiesResponse ?? this.companiesResponse
    );
  }

  @override
  List<Object> get props => [status, companiesResponse, message,];
}
