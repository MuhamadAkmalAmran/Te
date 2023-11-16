class LoginService {
  bool isValidEmail(String email) {
    // Simple email validation logic (for demonstration purposes)
    return email.contains('@') && email.contains('.');
  }

  bool isValidPassword(String password) {
    // Simple password validation logic (for demonstration purposes)
    return password.length >= 6;
  }
}
