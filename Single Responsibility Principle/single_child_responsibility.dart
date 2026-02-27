///Benefits
///1. Easier to maintain and understand.
///2. Follow clean code structure.
///3. Easier to test features.

//!Wrong way or the volation of Single child resonsibilty principle
class UserManager {
  bool authenticateUser(String userName, String password) => true;
  void updateUserProfile(String userName, Map<String, dynamic> profile) {
    print("User profile updated for $userName user.");
  }
}

//*Write way or the actual way to implement Single child resonsibilty principle
class AuthenticationManager {
  bool authenticateUser(String userName, String password) => true;
}

class UserProfileManager {
  void updateUserProfile(String userName, Map<String, dynamic> profile) {
    print("User profile updated for $userName user.");
  }
}
