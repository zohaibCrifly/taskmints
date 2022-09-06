import 'package:flutter/cupertino.dart';
import 'package:taskmints/dataclass/phone_country_code.dart';

class SignInState with ChangeNotifier {
  CountryCode _selectedPhoneCode=CountryCode.fromJson(countryCodeJson.first);

  CountryCode get selectedPhoneCode => _selectedPhoneCode;

  changeCountryCode(selectCode) {
    _selectedPhoneCode = selectCode;
    notifyListeners();
  }
}
