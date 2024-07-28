import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'cv_state.dart';

class CvCubit extends Cubit<CvState> {
  CvCubit() : super(const CvState());
}
