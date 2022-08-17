import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _regionController = TextEditingController();
  final _noteController = TextEditingController();
  bool _isValid = false;
  bool _isError = false;

  void validateConfirm() {
    if (_nameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _regionController.text.isNotEmpty &&
        _noteController.text.isNotEmpty) {
      _isValid = true;
    } else {
      _isValid = false;
    }
    setState(() {});
  }

  void checkRegion() {
    if (_regionController.text.length < 5) {
      _isError = true;
    } else {
      _isError = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AccountInput(
              onChanged: (_) => validateConfirm(),
              text: 'Name',
              controller: _nameController,
            ),
            AccountInput(
              onChanged: (_) => validateConfirm(),
              text: 'Phone',
              inputType: TextInputType.phone,
              controller: _phoneController,
            ),
            AccountInput(
              onChanged: (_) => validateConfirm(),
              text: 'Region',
              controller: _regionController,
            ),
            AccountInput(
              onChanged: (_) => validateConfirm(),
              text: 'Note',
              controller: _noteController,
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      primary: _isError
                          ? AppColors.red
                          : _isValid
                              ? AppColors.blue
                              : AppColors.greyText,
                    ),
                    onPressed: _isValid
                        ? () {
                            checkRegion();
                            if (!_isError) {
                              context.read<AppState>().changeLogInState(true);
                            }
                          }
                        : null,
                    child: const Text(
                      'Confirm',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.5,
                        color: AppColors.inactiveColor,
                      ),
                    ),
                    onPressed: () {
                      routemaster.pop();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: AppColors.grey2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
