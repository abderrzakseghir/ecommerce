import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future CompleteInformation(@required String name,
      @required String phoneNumber, @required String adress);
}
