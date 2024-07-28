import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'learn_basics_state.dart';

class LearnBasicsCubit extends Cubit<LearnBasicsState> {
  LearnBasicsCubit() : super(const LearnBasicsState());
}
