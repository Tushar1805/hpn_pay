part of 'intro_index_cubit.dart';

class IntroIndexState {
  final int index;
  IntroIndexState({required this.index});

  factory IntroIndexState.initial(){
    return IntroIndexState(index: 0);
  }

  IntroIndexState copyWith({int? index}) {
    return IntroIndexState(
      index: index ?? this.index,
    );
  }
}
