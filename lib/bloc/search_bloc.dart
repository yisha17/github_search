import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_search/repository/user_repository.dart';
import 'package:meta/meta.dart';

import '../models/user.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
 UserRepository repo;
 SearchBloc(this.repo):super(SearchInitial());
  
  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async*{
    if (event is SearchingEvent){
      try{
        yield SearchInitial();

        final data = await repo.getUsers(event.username!);
        yield UserState(data!);
      }catch(e){
        yield ErrorState(message: e.toString());
      }
    }
  }
}
