import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/empty_page.dart';
import 'package:beitouti_users/features/current_subscriptions/presentation/widgets/current_subscription_item.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/all_subscription_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../bloc/current_subscriptions.dart';

class CurrentSubscriptionsPage extends StatefulWidget {
  const CurrentSubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<CurrentSubscriptionsPage> createState() =>
      _CurrentSubscriptionsPageState();
}

class _CurrentSubscriptionsPageState extends State<CurrentSubscriptionsPage> {
  final _bloc = sl<CurrentSubscriptionsBloc>();

  @override
  void initState() {
    _bloc.addGetCurrentSubscriptionsEvent();
    super.initState();
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
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text(
              "اشتراكاتي",
            ),
          ),
          body: !state.isLoading && state.subscriptions.isEmpty
              ? const EmptyPage(
                  title: 'لا يوجد لديك اشتركات حالية',
                )
              : Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ...state.subscriptions.map(
                            (subscription) => CurrentSubscriptionItem(
                              subscription: subscription,
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
