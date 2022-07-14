part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable{
  const SearchEvent();
}

class SearchingEvent extends SearchEvent{
  final String? username;
  const SearchingEvent({required this.username});

  @override
  List<Object?> get props => [username];

}




