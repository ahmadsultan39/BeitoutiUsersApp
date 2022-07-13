import 'package:beitouti_users/features/search/data/data_sources/local/search_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/data/base_local_data_source.dart';



@LazySingleton(as:  SearchLocalDataSource)
class SearchLocalDataSourceImpl extends BaseLocalDataSourceImpl implements SearchLocalDataSource{
  SearchLocalDataSourceImpl({required SharedPreferences sharedPreferences}) : super(sharedPreferences: sharedPreferences);
}