import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/offered_meal.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/meals_bloc.dart';
import '../bloc/meals_state.dart';

class AllSubscriptionsPage extends StatefulWidget {
  const AllSubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<AllSubscriptionsPage> createState() => _AllSubscriptionsPageState();
}

class _AllSubscriptionsPageState extends State<AllSubscriptionsPage> {
  final _bloc = sl<MealsBloc>();
  final _controller = ScrollController();

  @override
  void initState() {
    _bloc.addGetAllSubscriptionsEvent();
    _controller.addListener(
      () {
        if (_controller.position.pixels ==
            _controller.position.maxScrollExtent) {
          _bloc.addGetAllSubscriptionsEvent();
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsBloc, MealsState>(
      bloc: _bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback(
          (_) => message(
            message: state.message,
            isError: state.error,
            bloc: _bloc,
            context: context,
          ),
        );
        return Scaffold(
          appBar: AppBar(
            title: Text('كل الإشتراكات'),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: _controller,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.allSubscriptions.length,
                      itemBuilder: (ctx, index) => Subscribe(
                        subscribe: state.allSubscriptions[index],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    state.isAllSubscriptionsPaginateLoading
                        ? const Loader()
                        : Container(),
                  ],
                ),
              ),
              state.isAllSubscriptionsLoading ? const Loader() : Container(),
            ],
          ),
        );
      },
    );
  }
}
