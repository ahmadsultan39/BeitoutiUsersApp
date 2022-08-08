import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/core/error/exceptions.dart';
import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/features/profile/data/data_sources/local/profile_local_data_source.dart';
import 'package:beitouti_users/features/profile/data/models/profile_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ProfileLocalDataSource)
class ProfileLocalDataSourceImp extends BaseLocalDataSourceImpl
    implements ProfileLocalDataSource {
  ProfileLocalDataSourceImp({required SharedPreferences sharedPreferences})
      : super(sharedPreferences: sharedPreferences);

  @override
  Future<ProfileModel> getProfileInfo() async {
    try {
      final userName = sharedPreferences.getString(
        SharedPreferencesKeys.userName,
      );
      final userEmail = sharedPreferences.getString(
        SharedPreferencesKeys.userEmail,
      );
      final userPhoneNumber = sharedPreferences.getString(
        SharedPreferencesKeys.userPhoneNumber,
      );
      final userCampusCardExpiryDate = sharedPreferences.getString(
        SharedPreferencesKeys.userCampusCardExpiryDate,
      );
      return ProfileModel(
        name: userName!,
        phoneNumber: userPhoneNumber!,
        email: userEmail!,
        userCampusCardExpiryDate: userCampusCardExpiryDate!,
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
