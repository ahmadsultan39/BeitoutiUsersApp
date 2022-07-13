import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection.dart';
import '../bloc/subscription.dart';

class SubscriptionPage extends StatefulWidget {
  final int subscriptionId;

  const SubscriptionPage({
    Key? key,
    required this.subscriptionId,
  }) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final _bloc = sl<SubscriptionBloc>();

  @override
  void initState() {
    _bloc.addGetSubscriptionEvent(widget.subscriptionId);
    _bloc.addGetSubscriptionMealsEvent(widget.subscriptionId);
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
          appBar: AppBar(),
          body: state.isLoading
              ? const Loader()
              : GestureDetector(
                  onTap: () {
                    _bloc.addSubscribeEvent(
                      subscriptionId: widget.subscriptionId,
                      notes: 'notes',
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  ),
                ),
        );
      },
    );
  }
}
