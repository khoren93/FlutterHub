import 'package:bloc/bloc.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_state.dart';
part 'repository_cubit.freezed.dart';
part 'repository_cubit.g.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  RepositoryCubit() : super(const RepositoryState.loading());
}
