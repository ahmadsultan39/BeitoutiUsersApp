import 'package:beitouti_users/features/search/data/models/search_chef_model.dart';
import 'package:beitouti_users/features/search/domain/entities/search_chef.dart';
import 'package:beitouti_users/features/search/domain/entities/search_subscription.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_subscription_model.g.dart';

@JsonSerializable()
class SearchSubscriptionModel extends SearchSubscription {
  @JsonKey(name: "days_number")
  final int daysNumber;

  @JsonKey(name: "starts_at")
  final String startsAt;

  @JsonKey(name: "total_cost")
  final int totalCost;

  @JsonKey(name: "rate")
  final double? rating;

  @JsonKey(name: "rate_count")
  final int? ratesCount;

  final SearchChefModel chef;

  const SearchSubscriptionModel(
      int id,
      String name,
      List<String> meals,
      this.daysNumber,
      this.startsAt,
      this.totalCost,
      this.rating,
      this.ratesCount,
      this.chef)
      : super(id, name, daysNumber, startsAt, totalCost, rating, ratesCount,
            meals, chef);
}
