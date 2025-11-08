class User {
  final String email;
  final String? gender;
  final String? name;
  final String password;
  final String? confirmPassword;
  final String? phone;

  User({
    this.phone,
    required this.email,
    this.gender,
    this.name,
    required this.password,
    this.confirmPassword,
  });
  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'email': email,
      'gender': gender,
      'name': name,
      'password': password,
      'password_confirmation': confirmPassword,
    };
  }
}
