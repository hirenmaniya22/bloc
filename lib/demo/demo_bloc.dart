import 'package:bloc/bloc.dart';

import 'demo_event.dart';
import 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, int> {
  DemoBloc() : super(0) {
    on<InitEvent>((event, emit) {
      emit(0);
    },);
    on<sum>((s, emit) {
      int ans=int.parse(s.a)+int.parse(s.b);
      emit(ans);
    },);

  }


}
