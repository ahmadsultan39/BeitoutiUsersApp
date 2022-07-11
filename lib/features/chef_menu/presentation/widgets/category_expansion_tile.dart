import 'package:beitouti_users/features/chef_menu/domain/entities/chef_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/chef_menu.dart';
import 'meal_tile.dart';

class CategoryExpansionTile extends StatefulWidget {
  final int chefId;
  final ChefCategory category;
  final ChefMenuBloc bloc;

  const CategoryExpansionTile(this.chefId, this.category, this.bloc, {Key? key})
      : super(key: key);

  @override
  State<CategoryExpansionTile> createState() => _CategoryExpansionTileState();
}

class _CategoryExpansionTileState extends State<CategoryExpansionTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ChefMenuBloc, ChefMenuState>(
      bloc: widget.bloc,
      builder: (context, state) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: theme.colorScheme.secondary,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          margin: EdgeInsets.symmetric(vertical: 8.w, horizontal: 5),
          constraints: BoxConstraints(maxHeight: 530.h),
          child: ExpansionTile(
            onExpansionChanged: (open) {
              if (open) {
                widget.bloc.addGetChefCategoryMealsEvent(
                    chefId: widget.chefId, categoryId: widget.category.id);
              }
            },
            collapsedIconColor: theme.backgroundColor,
            collapsedTextColor: theme.backgroundColor,
            iconColor: theme.backgroundColor,
            textColor: theme.backgroundColor,
            title: Text(
              widget.category.name,
              style: TextStyle(fontSize: 14.sp),
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                    color: theme.backgroundColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                constraints: BoxConstraints(maxHeight: 460.h),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  itemCount:
                      widget.bloc.state.categoryMeals.length,
                  itemBuilder: (ctx, index) => MealTile(
                      widget.bloc.state.categoryMeals[index],
                      widget.bloc),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
