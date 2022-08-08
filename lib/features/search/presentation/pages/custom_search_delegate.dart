import 'package:beitouti_users/features/search/presentation/pages/search_results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/search.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final _bloc = sl<SearchBloc>();
    if (query.trim().isNotEmpty) {
      return BlocBuilder<SearchBloc, SearchState>(
        bloc: _bloc,
        builder: (context, state) {
          WidgetsBinding.instance?.addPostFrameCallback(
            (_) => message(
                message: state.message,
                isError: state.error,
                bloc: _bloc,
                context: context),
          );
          return SearchResultsPage(query: query, bloc: _bloc);
        },
      );
    } else {
      return Container(
        color: Theme.of(context).backgroundColor,
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
        appBarTheme: theme.appBarTheme,
        backgroundColor: theme.backgroundColor,
        shadowColor: theme.shadowColor,
        brightness: theme.brightness,
        primaryColor: theme.primaryColor,
        hintColor: theme.hintColor,
        indicatorColor: theme.indicatorColor,
        bottomAppBarColor: theme.bottomAppBarColor,
        primaryColorLight: theme.primaryColorLight,
        primaryColorDark: theme.primaryColorDark,
        cardColor: Theme.of(context).textTheme.bodyText1!.color,
        canvasColor: theme.canvasColor,
        hoverColor: theme.hoverColor,
        highlightColor: theme.highlightColor,
        focusColor: theme.focusColor,
        textTheme: theme.textTheme);

    // ThemeData(
    //   appBarTheme: Theme.of(context).appBarTheme.copyWith(
    //         elevation: 0,
    //         backgroundColor: Theme.of(context).primaryColorDark,
    //       ));
  }
}
