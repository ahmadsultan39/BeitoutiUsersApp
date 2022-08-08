import 'package:beitouti_users/features/chef_menu/presentation/widgets/subscription_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../../injection.dart';
import '../bloc/chef_menu.dart';

class SubscriptionsPage extends StatefulWidget {
  final int id;
  const SubscriptionsPage({Key? key, required this.id}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {

  final _bloc = sl<ChefMenuBloc>();


  @override
  void initState() {
    _bloc.addGetChefSubscriptionsEvent(widget.id);
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
                    ..._bloc.state.subscriptions
                        .map((e) => SubscriptionTile(subscription:  e,bloc: _bloc)),
                  ],
                ),
              ),
              if (state.isSubscriptionsLoading) const Loader()
            ],
          );
        },
      ),
    );
  }
}
