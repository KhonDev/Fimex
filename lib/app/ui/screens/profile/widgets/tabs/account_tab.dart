import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

import '../change_pin_input.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  bool _isChangePinActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView(
        //>?
        physics: const RangeMaintainingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0)
          ..copyWith(bottom: 20.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const AccountInput(text: 'Name'),
              const AccountInput(text: 'Phone', inputType: TextInputType.phone),
              const AccountInput(text: 'Region'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SpecificationButton(
                  text: 'Change PIN',
                  isActive: _isChangePinActive,
                  minimumSize: const Size(105.0, 40.0),
                  isAll: true,
                  onPressed: () {
                    setState(() {
                      _isChangePinActive = !_isChangePinActive;
                    });
                  },
                ),
              ), //?
              if (_isChangePinActive) ...[
                const ChangePinInput(hintText: 'Old PIN'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: ChangePinInput(hintText: 'New PIN'),
                ),
                const ChangePinInput(hintText: 'Confirm PIN'),
                const SizedBox(height: 20.0),
                SpecificationButton(
                  text: 'Save',
                  minimumSize: const Size(105.0, 40.0),
                  onPressed: () {},
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
