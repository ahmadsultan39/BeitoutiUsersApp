import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/meals/presentation/widgets/offered_meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/meals_bloc.dart';
import '../bloc/meals_state.dart';

class AllOfferedMealsPage extends StatefulWidget {
  const AllOfferedMealsPage({Key? key}) : super(key: key);

  @override
  State<AllOfferedMealsPage> createState() => _AllOfferedMealsPageState();
}

class _AllOfferedMealsPageState extends State<AllOfferedMealsPage> {
  final _bloc = sl<MealsBloc>();
  final _controller = ScrollController();

  @override
  void initState() {
    _bloc.addGetAllOfferedMealsEvent();
    _controller.addListener(
      () {
        if (_controller.position.pixels ==
            _controller.position.maxScrollExtent) {
          _bloc.addGetAllOfferedMealsEvent();
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
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text('كل العروضات'),
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
                      itemCount: state.allOfferedMeals.length,
                      itemBuilder: (ctx, index) => OfferedMeal(
                        meal: state.allOfferedMeals[index],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    state.isAllOfferedMealsPaginateLoading
                        ? const Loader()
                        : Container(),
                  ],
                ),
              ),
              state.isAllOfferedMealsLoading ? const Loader() : Container(),
            ],
          ),
        );
      },
    );
  }
}
