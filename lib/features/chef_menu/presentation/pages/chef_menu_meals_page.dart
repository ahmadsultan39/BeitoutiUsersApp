import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../injection.dart';
import '../bloc/chef_menu.dart';
import '../widgets/category_expansion_tile.dart';

class ChefMenuMealsPage extends StatefulWidget {
  final int id;
  const ChefMenuMealsPage({Key? key, required this.id}) : super(key: key);

  @override
  State<ChefMenuMealsPage> createState() => _ChefMenuMealsPageState();
}

class _ChefMenuMealsPageState extends State<ChefMenuMealsPage> {

  final _bloc = sl<ChefMenuBloc>();


  @override
  void initState() {
    _bloc.addGetChefCategoriesEvent(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: BlocBuilder<ChefMenuBloc, ChefMenuState>(
        bloc: _bloc,
        builder: (context, state) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            message(
              message: state.message,
              isError: state.error,
              context: context,
              bloc: _bloc,
            );
          });
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ..._bloc.state.categories
                        .map((e) => CategoryExpansionTile(widget.id,e,_bloc)),
                  ],
                ),
              ),
              if (state.isCategoriesLoading || state.isCategoryMealsLoading) const Loader()
            ],
          );
        },
      ),
    );
  }
}
