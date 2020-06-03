///Validators for email and password
class Validators {
  ///regular expression to check if the email is valid
  RegExp emailRegExp() {
    return RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
  }

  ///regular expression to check if the password is valid
  RegExp passwordRegExp() {
    return RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
    );
  }

  ///regular expression to check if the name is valid
  RegExp nameRegExp() {
    return RegExp(
      r'[a-zA-Z]',
    );
  }

  ///regular expression to check if the phone number is valid
  RegExp phoneRegExp() {
    return RegExp(
      r'(\+?\d{2}?\s?\d{3}\s?\d{3}\s?\d{4})|([0]\d{3}\s?\d{3}\s?\d{4})',
    );
  }

  ///check if the email is valid
  bool isValidEmail(String email) {
    return emailRegExp().hasMatch(email);
  }

  ///check if the password is valid
  bool isValidPassword(String password) {
    return passwordRegExp().hasMatch(password) && password.length > 6;
  }

  bool isValidName(String name) {
    return nameRegExp().hasMatch(name);
  }

  bool isValidPhoneNo(String number) {
    return phoneRegExp().hasMatch(number);
  }
}
