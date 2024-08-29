import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final UserRepository userRepository;

  late final StreamSubscription<User?> _userSubscription;
  //Inicializa el estado como desconocido
  AuthenticationBloc(
    {required this.userRepository}
  ) : super(const AuthenticationState.unknown()){
    //Cuando emite un nuevo (User), se envia al BLoC como un evento
    _userSubscription = userRepository.user.listen((user){
      add(AuthenticationUserChanged(user));
    });
    //Cada ves que creas un usuario llama al listen del usuario, agrega un evento
    on<AuthenticationUserChanged>((event, emit) {
      if(event.user != null){
        emit(AuthenticationState.authenticated(event.user!));
      }else{
        emit(const AuthenticationState.unauthenticated());
      }
    });

    @override
    Future<void> close(){
      _userSubscription.cancel();
      return super.close(); 
    }
    
  }

    
}
