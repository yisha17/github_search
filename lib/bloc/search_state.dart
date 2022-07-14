part of 'search_bloc.dart';

@immutable
abstract class SearchState extends Equatable{}

class SearchInitial extends SearchState {
  @override
  List<Object?> get props => [];
}

class UserState extends SearchState{
  final UserModel user;
  UserState(this.user);

  @override
  List<Object?> get props => [user];
  
}

class ErrorState extends SearchState{
  final String message;
  ErrorState({required this.message});
    @override
  List<Object?> get props => [message];
}
