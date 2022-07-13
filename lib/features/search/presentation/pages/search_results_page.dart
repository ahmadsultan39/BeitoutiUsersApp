import 'package:beitouti_users/features/search/presentation/widgets/chefs_list.dart';
import 'package:beitouti_users/features/search/presentation/widgets/subscriptions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/search_bloc.dart';
import '../widgets/meals_list.dart';

class SearchResultsPage extends StatefulWidget {
  final SearchBloc bloc;
  final String query;

  const SearchResultsPage({Key? key, required this.bloc, required this.query})
      : super(key: key);

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  int _index = 1;

  @override
  void initState() {
    widget.bloc.addMealsEvent(widget.query);
    widget.bloc.addSubscriptionsEvent(widget.query);
    widget.bloc.addChefsEvent(widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      if (_index != 1) {
                        setState(() {
                          _index = 1;
                        });
                      }
                    },
                    child: _index == 1
                        ? Text(
                            "الوجبات (${widget.bloc.state.totalMeals})",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 18.sp,
                            ),
                          )
                        : Text(
                            "الوجبات (${widget.bloc.state.totalMeals})",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16.sp,
                            ),
                          )),
                TextButton(
                  onPressed: () {
                    if (_index != 2) {
                      setState(
                        () {
                          _index = 2;
                        },
                      );
                    }
                  },
                  child: _index == 2
                      ? Text(
                          "الطهاة (${widget.bloc.state.totalChefs})",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 18.sp,
                          ),
                        )
                      : Text(
                          "الطهاة (${widget.bloc.state.totalChefs})",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.sp,
                          ),
                        ),
                ),
                TextButton(
                  onPressed: () {
                    if (_index != 3) {
                      setState(
                        () {
                          _index = 3;
                        },
                      );
                    }
                  },
                  child: _index == 3
                      ? Text(
                    "الاشتراكات (${widget.bloc.state.totalChefs})",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 18.sp,
                    ),
                  )
                      : Text(
                    "الاشتراكات (${widget.bloc.state.totalChefs})",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _index == 1
              ? MealsList(
                  bloc: widget.bloc,
                  query: widget.query,
                )
              : _index == 2
                  ? ChefsList(
                      bloc: widget.bloc,
                      query: widget.query,
                    )
                  : SubscriptionsList(
                      bloc: widget.bloc,
                      query: widget.query,
                    ),
        ],
      ),
    );
  }
}
