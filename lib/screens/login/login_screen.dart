import 'dart.ui';

import 'package:flutter/material.dart';
import 'package:login_app/auth.dart';
import 'package:login_app/data/database_helper.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/login/login_screen_presenter.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO : implement createState
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
      implements LoginScreenContract, AuthStateListener {
    BuildContext _ctx;

    bool _isLoading = false;
    final formKey = new GlobalKey<FormState>();
    final scaffoldKey = new GlobalKey<ScaffoldState>();
    String _password, _password;

    LoginScreenPresenter _presenter;

    
  }
}