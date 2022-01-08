class DatabaseOpertaon {
  String _username = "uoceylann";
  String _password = '123456';

  void isLogin() {
    if (_username == 'uoceylann' && _password == '123456') {
      print('Giriş başarılı!');
    } else {
      print('Giriş başarısız');
    }
  }

  String get username => _username;
  set setUsername(String username) {
    _username = username;
  }
}
