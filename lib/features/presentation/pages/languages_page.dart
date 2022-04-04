import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/presentation/cubit/languages/languages_cubit.dart';
import 'package:flutterhub/features/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/presentation/widgets/list_tiles/language_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LanguagesPage extends StatefulWidget {
  const LanguagesPage({Key? key}) : super(key: key);

  @override
  State<LanguagesPage> createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  final _refreshController = RefreshController(initialRefresh: true);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a language'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                labelText: 'Filter languages',
              ),
              onChanged: (value) {
                context.read<LanguagesCubit>().searchLanguages(value);
              },
            ),
          ),
          Expanded(
            child: BlocConsumer<LanguagesCubit, LanguagesState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  fetchInProgress: () {},
                  fetchEmpty: () {
                    _refreshController.refreshCompleted();
                  },
                  fetchSuccess: (items, language) {
                    _refreshController.refreshCompleted();
                  },
                  fetchError: (error) {
                    _refreshController.refreshFailed();
                  },
                );
              },
              builder: (context, state) {
                return SmartRefresher(
                  controller: _refreshController,
                  onRefresh: _onRefresh,
                  child: state.when(
                    initial: () => Container(),
                    fetchInProgress: () => Container(),
                    fetchEmpty: emptyLanguagesWidget,
                    fetchSuccess: _buildSuccessWidget,
                    fetchError: (message) => serverErrorWidget(message, null),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _onRefresh() {
    context.read<LanguagesCubit>().fetchLanguages();
  }

  Widget _buildSuccessWidget(
      List<RepositoryLanguage> items, RepositoryLanguage? selected) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => LanguageTile(
        item: items[index],
        selected: items[index] == selected,
        onTap: _onLanguageSelected,
      ),
    );
  }

  _onLanguageSelected(RepositoryLanguage? item) {
    context.read<LanguagesCubit>().selectLanguage(item);
  }
}
