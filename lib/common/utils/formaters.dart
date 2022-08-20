import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class AppFormatters {
  static TextInputFormatter maskFormatter() => MaskTextInputFormatter(
        mask: '+7 (###) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
      );

  static TextInputFormatter onlyNumbersFormatter() =>
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  static TextInputFormatter creditCardExpirationDate() =>
      MaskTextInputFormatter(
        mask: '##/##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
      );
}
