// ignore_for_file: prefer_const_declarations, library_private_types_in_public_api

class ApiEndPoints {
  static final String baseUrl = 'https://pay.mjcreativa.com/api/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'register';
  final String loginEmail = 'login';
  final String getKaryawan = 'employee';
}
