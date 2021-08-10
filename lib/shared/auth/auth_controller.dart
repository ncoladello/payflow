class AuthController {
  var _isAuthenticated = false;

  void setUser(var user) {
    if (user != null) {
      _isAuthenticated = true;
    } else {
      _isAuthenticated = false;
    }
  }
}
