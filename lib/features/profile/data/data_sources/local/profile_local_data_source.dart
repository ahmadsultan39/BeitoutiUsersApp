import 'package:beitouti_users/core/data/base_local_data_source.dart';
import 'package:beitouti_users/features/profile/data/models/profile_model.dart';

abstract class ProfileLocalDataSource extends BaseLocalDataSource{
  Future<ProfileModel> getProfileInfo();
}