import 'package:demo_app/src/features/user/domain/user_repository.dart';

class UserService extends UserRepository {
  @override
  String getUserName() => "John Doe";
}
