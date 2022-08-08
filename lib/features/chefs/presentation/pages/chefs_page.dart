import 'package:beitouti_users/features/chefs/presentation/bloc/chefs.dart';
import 'package:beitouti_users/features/chefs/presentation/widgets/chefs_list.dart';
import 'package:beitouti_users/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/constants.dart';

class ChefsPage extends StatefulWidget {
  const ChefsPage({Key? key}) : super(key: key);

  @override
  State<ChefsPage> createState() => _ChefsPageState();
}

class _ChefsPageState extends State<ChefsPage> {
  final _bloc = sl<ChefsBloc>();

  @override
  void initState() {
    _bloc.addGetMostRecentChefsEvent();
    _bloc.addGetNearestChefsEvent();
    _bloc.addGetTopOrderedChefsEvent();
    _bloc.addGetTopRatedChefsEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChefsBloc, ChefsState>(
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
        return SingleChildScrollView(
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
