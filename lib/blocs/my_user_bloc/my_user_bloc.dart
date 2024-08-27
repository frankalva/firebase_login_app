import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_user_event.dart';
part 'my_user_state.dart';

class MyUserBloc extends Bloc<MyUserEvent, MyUserState> {
  MyUserBloc() : super(MyUserInitial());

  @override
  Stream<MyUserState> mapEventToState(
    MyUserEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
