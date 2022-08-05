import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/rating_widget.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:beitouti_users/features/subscription/presentation/widgets/subscription_meal_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../injection.dart';
import '../bloc/subscription.dart';

class SubscriptionPage extends StatefulWidget {
  final HomeSubscribe subscribe;

  const SubscriptionPage({
    Key? key,
    required this.subscribe,
  }) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final _bloc = sl<SubscriptionBloc>();

  @override
  void initState() {
    _bloc.addGetSubscriptionEvent(widget.subscribe.id);
    _bloc.addGetSubscriptionMealsEvent(widget.subscribe.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      bloc: _bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback(
          (_) {
            message(
              message: state.message,
              isError: state.error,
              context: context,
              bloc: _bloc,
            );
          },
        );
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: Text(widget.subscribe.name),
          ),
          body: Stack(
            children: [
              if (state.subscription != null)
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageChecker(
                                imageUrl:
                                    state.subscription!.chef.profilePicture,
                                borderColor: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(MdiIcons.chefHat),
                                      Text(
                                        state.subscription!.chef.name,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        state.subscription!.chef.location,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.timer),
                                      Text(
                                        state.subscription!.mealDeliveryTime
                                            .substring(0, 5),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (_, index) => SubscriptionMealItem(
                            meal: state.subscriptionMeals[index],
                            dayNumber: index + 1,
                          ),
                          itemCount: state.subscriptionMeals.length,
                        ),
                      ],
                    ),
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
