import 'package:beitouti_users/features/chefs/presentation/bloc/chefs.dart';
import 'package:beitouti_users/features/chefs/presentation/widgets/chefs_list.dart';
import 'package:beitouti_users/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';

class ChefsPage extends StatelessWidget {
  const ChefsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = sl<ChefsBloc>();
    bloc.addGetMostRecentChefsEvent();
    bloc.addGetNearestChefsEvent();
    bloc.addGetTopOrderedChefsEvent();
    bloc.addGetTopRatedChefsEvent();
    return BlocBuilder<ChefsBloc, ChefsState>(
      bloc: bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          message(
            message: state.message,
            isError: state.error,
            context: context,
            bloc: bloc,
          );
        });
        return  SingleChildScrollView(
            child: Column(
              children: [
                ChefsList(
                  title: "أقرب الطهاة",
                  isLoading: state.isNearestLoading,
                  chefs: state.nearest,
                ),
                ChefsList(
                  title: "الطهاة الأعلى تقييما",
                  isLoading: state.isTopRatedLoading,
                  chefs: state.topRated,
                ),
                ChefsList(
                  title: "الطهاة الأكثر طلبا",
                  isLoading: state.isTopOrderedLoading,
                  chefs: state.topOrdered,
                ),
                ChefsList(
                  title: "أحدث الطهاة",
                  isLoading: state.isMostRecentLoading,
                  chefs: state.mostRecent,
                ),
              ],
            ),
          );
      },
    );
  }
}
