import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'mentors_state.dart';

class MentorsCubit extends Cubit<MentorsState> {
  MentorsCubit() : super(const MentorsState());
}
