import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'current_subscriptions_event.dart';
part 'current_subscriptions_state.dart';

class CurrentSubscriptionsBloc extends Bloc<CurrentSubscriptionsEvent, CurrentSubscriptionsState> {
  CurrentSubscriptionsBloc() : super(CurrentSubscriptionsInitial()) {
    on<CurrentSubscriptionsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
