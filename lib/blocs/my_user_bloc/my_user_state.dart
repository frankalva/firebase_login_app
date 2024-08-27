part of 'my_user_bloc.dart';

abstract class MyUserState extends Equatable {
  const MyUserState();
  
  @override
  List<Object> get props => [];
}

class MyUserInitial extends MyUserState {}
