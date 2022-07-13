import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../injection.dart';
import '../bloc/current_subscriptions.dart';

class CurrentSubscriptionOrderPage extends StatefulWidget {
  final int subscriptionId;

  const CurrentSubscriptionOrderPage({
    Key? key,
    required this.subscriptionId,
  }) : super(key: key);

  @override
  State<CurrentSubscriptionOrderPage> createState() =>
      _CurrentSubscriptionOrderPageState();
}

class _CurrentSubscriptionOrderPageState
    extends State<CurrentSubscriptionOrderPage> {
  final _bloc = sl<CurrentSubscriptionsBloc>();

  @override
  void initState() {
    _bloc.addGetSubscriptionOrdersEvent(widget.subscriptionId);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.addClearSubscriptionOrdersEvent();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentSubscriptionsBloc, CurrentSubscriptionsState>(
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
          appBar: AppBar(),
          body: Stack(
            children: [
              Column(
                children: [
                  ...state.subscriptionOrders.map(
                    (order) => GestureDetector(
                      onTap: (){
                        _bloc.addCancelOrderEvent(order.id);
                      },
                      child: Text(
                        order.mealName +
                            "    " +
                            order.canBeCanceled.toString(),
                      ),
                    ),
                  ),
                ],
              ),
              state.isLoading ? const Loader() : Container(),
            ],
          ),
        );
      },
    );
  }
}
