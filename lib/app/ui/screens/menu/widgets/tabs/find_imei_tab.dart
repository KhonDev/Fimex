import 'package:fimex/app/domain/providers/menu_state.dart';

import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:fimex/app/ui/theme/text_styles.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../index.dart';

class FindImeiTab extends StatelessWidget {
  const FindImeiTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _vm = context.watch<MenuState>();
    final _read = context.read<MenuState>();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView(
        padding: const EdgeInsets.only(bottom: 20.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'To know the cost and date of your purchase, please\nenter:\n\n'
                  '- Serial number for (iOS 🍏)\n\n'
                  '- IMEI for (Android 🤖)\n\n'
                  'These numbers are listed in several places like: «⚙️ Settings menu », on the physical device, or on the original box.',
                  style: TextStyles.s14w400.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: CustomDivider(
              size: 3.0,
              color: AppColors.cardGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                      child: AccountInput(
                        text: 'SN & IMEI',
                        onChanged: _read.validateIMEI,
                        controller: _read.imeiController,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    SpecificationButton(
                      text: 'Find',
                      isAll: true,
                      isActive: _vm.isIMEIValidToFind,
                      minimumSize: const Size(51, 40.0),
                      isError: _vm.isIMEIError,
                      onPressed: !_vm.isIMEIValidToFind
                          ? null
                          : () => _read.findIMEI(),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                _vm.isIMEIError
                    ? const IMEIFailResult()
                    : _vm.isIMEIValid
                        ? const IMEISuccessResult()
                        : const SizedBox.shrink(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
