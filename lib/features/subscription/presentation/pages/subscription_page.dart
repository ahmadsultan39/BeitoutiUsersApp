import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/default_rating_bar.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_subscribe.dart';
import 'package:beitouti_users/features/subscription/presentation/widgets/subscribe_dialog.dart';
import 'package:beitouti_users/features/subscription/presentation/widgets/subscription_info_item.dart';
import 'package:beitouti_users/features/subscription/presentation/widgets/subscription_meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocListener<SubscriptionBloc, SubscriptionState>(
      bloc: _bloc,
      listener: (context, state) async {
        if (state.isSubscribed) {
          Navigator.of(context).pop();
          _bloc.addReInitIsSubscribedEvent();
        }
      },
      child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
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
              // alignment: Alignment.center,
              children: [
                if (state.subscription != null)
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ImageChecker(
                                width: 200.w,
                                height: 200.h,
                                imageUrl:
                                    state.subscription!.chef.profilePicture ??
                                        "",
                                borderColor: Colors.grey,
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: DefaultRatingBar(
                                    numberColor:
                                        Theme.of(context).colorScheme.tertiary,
                                    initialRating: state.subscription!.rating,
                                    withRatingCount: true,
                                    totalRating:
                                        state.subscription!.ratingCount,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SubscriptionInfoItem(
                          value: state.subscription!.chef.name,
                          title: 'اسم الطاهي: ',
                          icon: MdiIcons.chefHat,
                        ),
                        SubscriptionInfoItem(
                          value: state.subscription!.chef.location!,
                          title: 'الموقع: ',
                          icon: Icons.location_on,
                        ),
                        SubscriptionInfoItem(
                          value: state.subscription!.mealDeliveryTime
                              .substring(0, 5),
                          title: 'وقت التوصيل: ',
                          icon: Icons.timer,
                        ),
                        SubscriptionInfoItem(
                          value:
                              state.subscription!.totalCost.round().toString() +
                                  ' ل.س',
                          title: 'الكلفة الإجمالية: ',
                          icon: MdiIcons.cash,
                        ),
                        SubscriptionInfoItem(
                          value: state.subscription!.startsAt,
                          title: 'تاريخ بداية الاشتراك: ',
                          icon: Icons.calendar_month_rounded,
                        ),
                        ...state.subscriptionMeals.map(
                          (meal) => SubscriptionMealItem(
                            meal: meal,
                            dayNumber:
                                state.subscriptionMeals.indexOf(meal) + 1,
                          ),
                        ),
                        if (!state.subscription!.hasSubscribed)
                          SizedBox(
                            height: 100.h,
                          ),
                      ],
                    ),
                  ),
                if (state.subscription != null &&
                    !state.subscription!.hasSubscribed)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (_) => SubscribeDialog(
                              onTap: (notes) {
                                _bloc.addSubscribeEvent(
                                  subscriptionId: widget.subscribe.id,
                                  notes: notes,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 10),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "اشتراك",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.background,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                state.isLoading ? const Loader() : Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}
