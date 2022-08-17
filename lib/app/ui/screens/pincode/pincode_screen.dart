import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class PincodeScreen extends StatefulWidget {
  const PincodeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PincodeScreen> createState() => _PincodeScreenState();
}

class _PincodeScreenState extends State<PincodeScreen> {
  final _pinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isError = false;
  static final _defaultPinTheme = PinTheme(
    margin: const EdgeInsets.symmetric(horizontal: 17.0),
    width: 20.0,
    height: 20.0,
    decoration: BoxDecoration(
      color: AppColors.greyCircle,
      borderRadius: BorderRadius.circular(100.0),
    ),
  );

  static final _errorPinTheme = _defaultPinTheme.copyWith(
    decoration: BoxDecoration(
      color: AppColors.red,
      borderRadius: BorderRadius.circular(100.0),
    ),
  );

  void onValidate(String pin) {
    //?
    if (!_formKey.currentState!.validate()) {
      _isError = true;
      _pinController.clear();
    } else {
      context.read<AppState>().changeLogInState(true);
      _isError = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListView(
            physics: const RangeMaintainingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Text(
                'Enter PIN',
                textAlign: TextAlign.center,
                style: TextStyles.s16w700.copyWith(
                  color: AppColors.grey2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 90.0,
                ),
                //?
                child: Form(
                  key: _formKey,
                  child: Pinput(
                    controller: _pinController,
                    forceErrorState: _isError,
                    closeKeyboardWhenCompleted: false,
                    onCompleted: onValidate,
                    autofocus: true,
                    cursor: const Text(''),
                    obscureText: true,
                    length: 5,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    errorBuilder: (_, __) => const SizedBox.shrink(),
                    obscuringWidget: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: const BoxDecoration(
                        color: AppColors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    defaultPinTheme: _defaultPinTheme,
                    errorPinTheme: _errorPinTheme,
                    validator: (s) {
                      return s == '22222' ? null : '';
                    },
                  ),
                ),
              ),
              // const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0)
                    .copyWith(bottom: 10.0),
                child: Image.asset(Images.pinImage),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: AppColors.greyText,
                ),
                onPressed: () {
                  routemaster.push(AppRoutes.login);
                },
                child: Text(
                  'Not Login?',
                  style: TextStyles.s16w600.copyWith(
                    color: AppColors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
