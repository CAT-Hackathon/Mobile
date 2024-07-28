import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'interview_state.dart';

class InterviewCubit extends Cubit<InterviewState> {
  InterviewCubit() : super(const InterviewState());
}
