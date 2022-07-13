import 'package:beitouti_users/features/chef_menu/domain/use_cases/get_chef_categories.dart';
import 'package:beitouti_users/features/chef_menu/domain/use_cases/get_chef_category_meals.dart';
import 'package:beitouti_users/features/chef_menu/domain/use_cases/get_chef_info.dart';
import 'package:beitouti_users/features/chef_menu/domain/use_cases/get_chef_subscriptions.dart';
import 'package:beitouti_users/features/chef_menu/domain/use_cases/get_subscription_meals.dart';
import 'package:injectable/injectable.dart';

import 'chef_menu.dart';
import 'package:bloc/bloc.dart';

@injectable
class ChefMenuBloc extends Bloc<ChefMenuEvent, ChefMenuState> {
  final GetChefCategoriesUseCase getChefCategoriesUseCase;
  final GetChefCategoryMealsUseCase getChefCategoryMealsUseCase;
  final GetChefInfoUseCase getChefInfoUseCase;
  final GetChefSubscriptionsUseCase getChefSubscriptionsUseCase;
  // final GetSubscriptionMealsUseCase getSubscriptionMealsUseCase;

  void addGetChefCategoriesEvent(int id) {
    add(GetChefCategoriesEvent((b) => b..id = id));
  }

  void addGetChefCategoryMealsEvent(
      {required int chefId, required int categoryId}) {
    add(GetChefCategoryMealsEvent((b) => b
      ..chefId = chefId
      ..categoryId = categoryId));
  }

  void addGetChefInfoEvent(int id) {
    add(GetChefInfoEvent((b) => b..id = id));
  }

  void addGetChefSubscriptionsEvent(int id) {
    add(GetChefSubscriptionsEvent((b) => b..id = id));
  }

  void addGetChefSubscriptionMealsEvent(int id) {
    add(GetChefSubscriptionMealsEvent((b) => b..id = id));
  }

  void clearMessage() {
    add(ClearMessage());
  }

  @factoryMethod
  ChefMenuBloc(
      this.getChefCategoriesUseCase,
      this.getChefCategoryMealsUseCase,
      this.getChefInfoUseCase,
      this.getChefSubscriptionsUseCase,
      // this.getSubscriptionMealsUseCase,
      )
      : super(ChefMenuState.initial()) {
    on<ChefMenuEvent>((event, emit) async {
      /// *** GetChefCategories *** //
      if (event is GetChefCategoriesEvent) {
        emit(state.rebuild((b) => b..isCategoriesLoading = true));

        final result = await getChefCategoriesUseCase(
          ParamsGetChefCategoriesUseCase(id: event.id),
        );

        result.fold(
          (failure) => emit(
            state.rebuild(
              (b) => b
                ..isCategoriesLoading = false
                ..error = true
                ..message = failure.error,
            ),
          ),
          (categories) => emit(
            state.rebuild(
              (b) => b
                ..isCategoriesLoading = false
                ..categories = categories,
            ),
          ),
        );
      }

      /// *** GetChefCategoryMeals *** //
      if (event is GetChefCategoryMealsEvent) {
        emit(state.rebuild((b) => b..isCategoryMealsLoading = true));

        final result = await getChefCategoryMealsUseCase(
          ParamsGetChefCategoryMealsUseCase(
              chefId: event.chefId, categoryId: event.categoryId),
        );

        result.fold(
          (failure) => emit(
            state.rebuild(
              (b) => b
                ..isCategoryMealsLoading = false
                ..error = true
                ..message = failure.error,
            ),
          ),
          (meals) => emit(
            state.rebuild(
              (b) => b
                ..isCategoryMealsLoading = false
                ..categoryMeals = meals,
            ),
          ),
        );
      }

      /// *** Get Chef Info *** //
      if (event is GetChefInfoEvent) {
        emit(state.rebuild((b) => b..isChefInfoLoading = true));

        final result = await getChefInfoUseCase(
          ParamsGetChefInfoUseCase(id: event.id),
        );

        result.fold(
          (failure) => emit(
            state.rebuild(
              (b) => b
                ..isChefInfoLoading = false
                ..error = true
                ..message = failure.error,
            ),
          ),
          (info) => emit(
            state.rebuild(
              (b) => b
                ..isChefInfoLoading = false
                ..chefInfo = info,
            ),
          ),
        );
      }

      /// *** Get Chef Subscriptions *** //
      if (event is GetChefSubscriptionsEvent) {
        emit(state.rebuild((b) => b..isSubscriptionsLoading = true));

        final result = await getChefSubscriptionsUseCase(
          ParamsGetChefSubscriptionsUseCase(id: event.id),
        );

        result.fold(
          (failure) => emit(
            state.rebuild(
              (b) => b
                ..isSubscriptionsLoading = false
                ..error = true
                ..message = failure.error,
            ),
          ),
          (subscriptions) => emit(
            state.rebuild(
              (b) => b
                ..isSubscriptionsLoading = false
                ..subscriptions = subscriptions,
            ),
          ),
        );
      }

      // /// *** Get Chef Subscriptio Meals *** //
      // if (event is GetChefSubscriptionMealsEvent) {
      //   emit(state.rebuild((b) => b..isSubscriptionMealsLoading = true));
      //
      //   final result = await getSubscriptionMealsUseCase(
      //     ParamsGetSubscriptionMealsUseCase(id: event.id),
      //   );
      //
      //   result.fold(
      //     (failure) => emit(
      //       state.rebuild(
      //         (b) => b
      //           ..isSubscriptionMealsLoading = false
      //           ..error = true
      //           ..message = failure.error,
      //       ),
      //     ),
      //     (meals) => emit(
      //       state.rebuild(
      //         (b) => b
      //           ..isSubscriptionMealsLoading = false
      //           ..subscriptionMeals = meals,
      //       ),
      //     ),
      //   );
      // }

      /// *** ClearMessage *** ///
      if (event is ClearMessage) {
        emit(
          state.rebuild(
            (b) => b
              ..error = false
              ..message = '',
          ),
        );
      }
    });
  }
}
