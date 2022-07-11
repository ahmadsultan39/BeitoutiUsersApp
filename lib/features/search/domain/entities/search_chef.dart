import 'package:equatable/equatable.dart';

class SearchChef extends Equatable {
  final int id;
  final String name;
  final bool? isAvailable;
  final String? image;
  final double? rating;
  final int? ratesCount;

  const SearchChef(this.id, this.name, this.isAvailable, this.image,
      this.rating, this.ratesCount);

  @override
  List<Object?> get props => [];
}
