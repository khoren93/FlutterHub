import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repositories_cubit.freezed.dart';
part 'repositories_cubit.g.dart';
part 'repositories_state.dart';

class RepositoriesCubit extends Cubit<RepositoriesState> {
  RepositoriesCubit() : super(const RepositoriesState.loading());
}
