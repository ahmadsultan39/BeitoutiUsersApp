import 'package:beitouti_users/features/search/data/models/search_chef_model.dart';
import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_subscription_model.g.dart';

@JsonSerializable()
class SearchSubscriptionModel extends SearchSubscription {
  static String className = "SearchSubscriptionModel";
  static const String paginateName =
      'PaginateResponseModel<SearchSubscriptionModel>';

  factory SearchSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionModelFromJson(json);

  @JsonKey(name: "is_available")
  final bool isAvailable;

  @JsonKey(name: "days_number")
  final int daysNumber;

  @JsonKey(name: "starts_at")
  final String startsAt;

  @JsonKey(name: "total_cost")
  final double totalCost;

  @JsonKey(name: "rate")
  final double? rating;

  @JsonKey(name: "rate_count")
  final int? ratesCount;

  final SearchChefModel chef;

  const SearchSubscriptionModel(
      int id,
      String name,
      List<String> meals,
      this.isAvailable,
      this.daysNumber,
      this.startsAt,
      this.totalCost,
      this.rating,
      this.ratesCount,
      this.chef)
      : super(id, name, isAvailable, daysNumber, startsAt, totalCost, rating,
            ratesCount, meals, chef);
}
