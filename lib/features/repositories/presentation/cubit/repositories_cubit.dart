import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'repositories_state.dart';

class RepositoriesCubit extends Cubit<RepositoriesState> {
  RepositoriesCubit() : super(RepositoriesInitial());
}
