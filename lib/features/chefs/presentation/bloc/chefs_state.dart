import 'package:beitouti_users/features/chefs/domain/entities/chef.dart';
import 'package:built_value/built_value.dart';
part 'chefs_state.g.dart';
abstract class ChefsState implements Built<ChefsState, ChefsStateBuilder> {
  List<Chef> get nearest;

  List<Chef> get topRated;

  List<Chef> get topOrdered;

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
        ..isLoading = false
        ..error = false
        ..message = "",
    );
  }
}
