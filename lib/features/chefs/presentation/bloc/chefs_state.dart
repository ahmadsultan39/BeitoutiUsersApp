import 'package:beitouti_users/features/chefs/domain/entities/chef.dart';
import 'package:built_value/built_value.dart';
part 'chefs_state.g.dart';
abstract class ChefsState implements Built<ChefsState, ChefsStateBuilder> {

  bool get isNearestLoading;
  List<Chef> get nearest;

  bool get isTopRatedLoading;
  List<Chef> get topRated;

  bool get isTopOrderedLoading;
  List<Chef> get topOrdered;

  bool get isMostRecentLoading;
  List<Chef> get mostRecent;

  bool get isLoading;

  bool get error;

  String get message;

  ChefsState._();

  factory ChefsState([Function(ChefsStateBuilder b) updates]) = _$ChefsState;

  factory ChefsState.initial() {
    return ChefsState(
      (b) => b
        ..nearest = []
        ..topRated = []
        ..topOrdered = []
        ..mostRecent = []
        ..isNearestLoading = false
        ..isTopRatedLoading = false
        ..isTopOrderedLoading = false
        ..isMostRecentLoading = false
        ..isLoading = false
        ..error = false
        ..message = "",
    );
  }
}
