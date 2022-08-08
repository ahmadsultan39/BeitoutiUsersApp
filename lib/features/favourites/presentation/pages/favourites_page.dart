import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/empty_page.dart';
import 'package:beitouti_users/features/favourites/presentation/widgets/favourite_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../bloc/favourites.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final _bloc = sl<FavouritesBloc>();

  @override
  void initState() {
    _bloc.addGetFavouriteMealsEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          message: state.message,
          isError: state.error,
          context: context,
          bloc: _bloc,
        );
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text('المفضلة'),
          ),
          body: !state.isLoading && state.favourites.isEmpty
              ? const EmptyPage(
                  title:
                      "القائمة المفضلة الخاصة بك فارغة!\nقم بتجربة إضافة بعض الوجبات لتظهر لك هنا",
                )
              : Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ...state.favourites.map(
                            (favourite) => FavouriteTile(
                              meal: favourite,
                              removeFromFavourite:
                                  _bloc.addRemoveFromFavouriteEvent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    state.isLoading ? const Loader() : Container(),
                  ],
                ),
        );
      },
    );
  }
}
