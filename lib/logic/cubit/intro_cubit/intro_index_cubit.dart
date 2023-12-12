import 'package:bloc/bloc.dart';

part 'intro_index_state.dart';

class IntroIndexCubit extends Cubit<IntroIndexState> {
  IntroIndexCubit() : super(IntroIndexState.initial());

  setIndex(int index){
    emit(state.copyWith(index: index));
  }
  incrementIndex(){
    emit(state.copyWith(index: state.index+1));
  }

}
