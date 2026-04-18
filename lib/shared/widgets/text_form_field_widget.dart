part of '../../wird_book.dart';

class TextFormFieldWidget extends ConsumerStatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    this.hintText = "Please Select",
    this.labelText,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.maxLines,
    this.onChanged,
    this.hintStyle,
    this.errorStyle,
    this.filledColor,
    this.maxLength,
    this.maxLengthOutSide = false,
    this.readOnly = false,
    this.inputFormatters,
    this.autoFocus = false,
    this.sufixIcon,
    this.onTap,
    this.borderColor,
    this.autovalidateMode,
    this.systemErrorText,
    this.autofillHints,
  });

  final bool readOnly;
  final VoidCallback? onTap;
  final bool autoFocus;
  final TextEditingController controller;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final BoxConstraints? prefixIconConstraints;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final int? maxLines;
  final bool maxLengthOutSide;
  final Color? filledColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final String? labelText;
  final String? systemErrorText;
  final Iterable<String>? autofillHints;

  @override
  ConsumerState<TextFormFieldWidget> createState() =>
      _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends ConsumerState<TextFormFieldWidget> {
  OutlineInputBorder get border => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.colorC1C7D0, width: 1),
    borderRadius: BorderRadius.circular(6),
  );

  OutlineInputBorder get focusedBorder => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primary, width: 1),
    borderRadius: BorderRadius.circular(6),
  );

  TextStyle get textStyle => GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.textColor,
  );

  TextStyle get hintStyle => GoogleFonts.inter(
    color: AppColors.color8A94A6,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  TextStyle get labelStyle => GoogleFonts.inter(
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label above the field
        if (widget.labelText != null) ...[
          Text(widget.labelText!, style: labelStyle),
          const SizedBox(height: 8),
        ],

        // Text field
        TextFormField(
          autofocus: widget.autoFocus,
          autovalidateMode:
              widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
          inputFormatters: widget.inputFormatters,
          maxLines: widget.maxLines,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          cursorColor: AppColors.primary,
          controller: widget.controller,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          autofillHints: widget.autofillHints,
          enableInteractiveSelection: true,
          enableIMEPersonalizedLearning: true,
          maxLength: widget.maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          onChanged: widget.onChanged,
          style: textStyle,
          decoration: InputDecoration(
            counter: widget.maxLength != null && !widget.maxLengthOutSide
                ? const Offstage()
                : null,
            errorStyle:
                widget.errorStyle ??
                textStyle.copyWith(color: AppColors.colorFF3B30, fontSize: 12),
            errorMaxLines: 3,
            hintText: widget.hintText,
            hintTextDirection: Directionality.of(context),
            hintStyle: widget.hintStyle ?? hintStyle,
            filled: true,
            fillColor: widget.filledColor ?? AppColors.white,
            errorBorder: border.copyWith(
              borderSide: BorderSide(color: AppColors.colorFF3B30, width: 1),
            ),
            focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: AppColors.colorFF3B30, width: 1),
            ),
            prefixIconConstraints:
                widget.prefixIconConstraints ??
                const BoxConstraints(minWidth: 20),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 16, right: 12),
                    child: widget.prefixIcon,
                  )
                : null,
            suffixIcon: widget.sufixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 16, left: 12),
                    child: widget.sufixIcon,
                  )
                : null,
            border: border,
            focusedBorder: focusedBorder,
            enabledBorder: border,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordField extends ConsumerStatefulWidget {
  const PasswordField({
    super.key,
    required this.controller,
    this.hintText = "Type here",
    this.labelText,
    this.hintStyle,
    this.errorStyle,
    this.checkPasswordStrength = true,
    this.suffixIcon,
    this.autofillHints,
  });

  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final bool checkPasswordStrength;
  final Widget? suffixIcon;
  final Iterable<String>? autofillHints;

  @override
  ConsumerState<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends ConsumerState<PasswordField> {
  OutlineInputBorder get border => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.colorC1C7D0, width: 1),
    borderRadius: BorderRadius.circular(6),
  );

  OutlineInputBorder get focusedBorder => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primary, width: 1),
    borderRadius: BorderRadius.circular(6),
  );

  TextStyle get textStyle => GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.textColor,
  );

  TextStyle get hintStyle => GoogleFonts.inter(
    color: AppColors.color8A94A6,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  TextStyle get labelStyle => GoogleFonts.inter(
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  bool obSecure = true;

  @override
  Widget build(BuildContext context) {
    final pattern = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\w\s]).{8,}$';
    final regex = RegExp(pattern);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label above the field
        if (widget.labelText != null) ...[
          Row(
            children: [
              Text(widget.labelText!, style: labelStyle),
              const SizedBox(width: 4),
              Text(
                "*",
                style: labelStyle.copyWith(color: AppColors.colorFF5630),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],

        // Password field
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          cursorColor: AppColors.primary,
          controller: widget.controller,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.visiblePassword,
          autofillHints: widget.autofillHints,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Password is required.";
            } else if (widget.checkPasswordStrength && !regex.hasMatch(value)) {
              return "Enter at least 8 characters with a mix of uppercase, lowercase, numbers, and special characters.";
            }
            return null;
          },
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          style: textStyle,
          obscureText: obSecure,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            errorMaxLines: 3,
            errorStyle:
                widget.errorStyle ??
                textStyle.copyWith(color: AppColors.colorFF3B30, fontSize: 12),
            hintText: widget.hintText,
            hintTextDirection: Directionality.of(context),
            hintStyle: widget.hintStyle ?? hintStyle,
            filled: true,
            fillColor: AppColors.white,
            suffixIcon:
                widget.suffixIcon ??
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        obSecure = !obSecure;
                      });
                    },
                    child: Icon(
                      obSecure ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.color8A94A6,
                    ),
                  ),
                ),
            errorBorder: border.copyWith(
              borderSide: BorderSide(color: AppColors.colorFF3B30, width: 1),
            ),
            focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: AppColors.colorFF3B30, width: 1),
            ),
            border: border,
            focusedBorder: focusedBorder,
            enabledBorder: border,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneNumberField extends ConsumerStatefulWidget {
  const PhoneNumberField({
    super.key,
    required this.controller,
    this.hintText = "Enter Phone Number",
    this.labelText,
    this.validator,
    this.onChanged,
    this.hintStyle,
    this.errorStyle,
    this.initialCountryCode = 'US',
    this.suffixIcon,
    this.autovalidateMode,
  });

  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final String? Function(PhoneNumber?)? validator; // Keep this as is
  final ValueChanged<String>? onChanged;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final String initialCountryCode;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;

  @override
  ConsumerState<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends ConsumerState<PhoneNumberField> {
  OutlineInputBorder get border => OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.colorC1C7D0, width: 2),
    borderRadius: BorderRadius.circular(10),
  );

  TextStyle get textStyle => GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textColor,
  );

  TextStyle get hintStyle => GoogleFonts.inter(
    color: AppColors.color8A94A6,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  TextStyle get labelStyle => GoogleFonts.inter(
    color: AppColors.color8A94A6,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: IntlPhoneField(
            controller: widget.controller,
            initialCountryCode: widget.initialCountryCode,
            flagsButtonPadding: const EdgeInsets.only(left: 10),
            dropdownIcon: const Icon(
              Icons.arrow_drop_down,
              color: AppColors.textColor,
            ),
            style: textStyle,
            cursorColor: AppColors.primary,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintTextDirection: Directionality.of(context),
              hintStyle: widget.hintStyle ?? hintStyle,
              filled: true,
              fillColor: AppColors.white,
              errorStyle:
                  widget.errorStyle ??
                  textStyle.copyWith(
                    color: AppColors.colorFF3B30,
                    fontSize: 10,
                  ),
              errorMaxLines: 10,
              suffixIcon:
                  widget.suffixIcon ??
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                      top: 20,
                      bottom: 20,
                      left: 0,
                    ),
                    child: Icon(Icons.phone, color: AppColors.color8A94A6),
                  ),
              errorBorder: border.copyWith(
                borderSide: BorderSide(color: AppColors.colorFF3B30, width: 2),
              ),
              focusedErrorBorder: border.copyWith(
                borderSide: BorderSide(width: 2, color: AppColors.colorFF3B30),
              ),
              border: border,
              focusedBorder: border,
              enabledBorder: border,
              contentPadding: const EdgeInsets.fromLTRB(0, 20, 25, 20),
            ),
            onChanged: (phone) {
              if (widget.onChanged != null) {
                widget.onChanged!(phone.completeNumber);
              }
            },
            validator: (phone) {
              print('phone: ${phone?.number.trim()}');
              if (phone == null || phone.number.trim().isEmpty) {
                return 'Phone number is required.';
              }
              print('phone.isValidNumber(): ${phone.isValidNumber()}');
              if (!phone.isValidNumber()) {
                return "Invalid phone number.";
              }
              return null;
            },
            autovalidateMode:
                widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
          ),
        ),
        if (widget.labelText != null)
          Positioned(
            top: 0,
            left: 15,
            child: Container(
              height: 25,
              decoration: const BoxDecoration(color: AppColors.white),
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.labelText ?? '', style: labelStyle),
                  const SizedBox(width: 3),
                  Text(
                    "*",
                    style: labelStyle.copyWith(color: AppColors.colorFF5630),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
// class PhoneNumberField extends ConsumerStatefulWidget {
//   const PhoneNumberField({
//     super.key,
//     required this.controller,
//     this.hintText = "Enter Phone Number",
//     this.labelText,
//     this.validator,
//     this.onChanged,
//     this.hintStyle,
//     this.errorStyle,
//     this.initialCountryCode = 'US',
//     this.suffixIcon,
//     this.autovalidateMode,
//   });

//   final TextEditingController controller;
//   final String hintText;
//   final String? labelText;
//   final String? Function(PhoneNumber?)? validator;
//   final ValueChanged<String>? onChanged;
//   final TextStyle? hintStyle;
//   final TextStyle? errorStyle;
//   final String initialCountryCode;
//   final Widget? suffixIcon;
//   final AutovalidateMode? autovalidateMode;

//   @override
//   ConsumerState<PhoneNumberField> createState() => _PhoneNumberFieldState();
// }

// class _PhoneNumberFieldState extends ConsumerState<PhoneNumberField> {
//   OutlineInputBorder get border => OutlineInputBorder(
//     borderSide: BorderSide(color: AppColors.colorC1C7D0, width: 2),
//     borderRadius: BorderRadius.circular(10),
//   );

//   TextStyle get textStyle => GoogleFonts.inter(
//     fontWeight: FontWeight.w500,
//     fontSize: 16,
//     color: AppColors.textColor,
//   );

//   TextStyle get hintStyle => GoogleFonts.inter(
//     color: AppColors.color8A94A6,
//     fontWeight: FontWeight.w500,
//     fontSize: 16,
//   );

//   TextStyle get labelStyle => GoogleFonts.inter(color: AppColors.color8A94A6);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 12),
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               // dialogTheme: DialogThemeData(
//               //   backgroundColor: AppColors.white,
//               //   shape: RoundedRectangleBorder(
//               //     borderRadius: BorderRadius.circular(12),
//               //   ),
//               // ),
//               // inputDecorationTheme: InputDecorationTheme(
//               //   filled: true,
//               //   fillColor: AppColors.white,
//               //   hintStyle: hintStyle,
//               //   contentPadding: const EdgeInsets.symmetric(
//               //     horizontal: 16,
//               //     vertical: 12,
//               //   ),
//               // ),
//             ),
//             child: IntlPhoneField(
//               controller: widget.controller,
//               initialCountryCode: widget.initialCountryCode,
//               flagsButtonPadding: const EdgeInsets.only(left: 10),
//               dropdownIcon: const Icon(
//                 Icons.arrow_drop_down,
//                 color: AppColors.textColor,
//               ),
//               style: textStyle,
//               cursorColor: AppColors.primary,
//               textInputAction: TextInputAction.next,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(
//                 hintText: widget.hintText,
//                 hintTextDirection: TextDirection.ltr,
//                 hintStyle: widget.hintStyle ?? hintStyle,
//                 filled: true,
//                 fillColor: AppColors.white,
//                 errorStyle:
//                     widget.errorStyle ??
//                     textStyle.copyWith(
//                       color: AppColors.colorFF3B30,
//                       fontSize: 10,
//                     ),
//                 errorMaxLines: 10,
//                 suffixIcon:
//                     widget.suffixIcon ??
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         right: 25,
//                         top: 20,
//                         bottom: 20,
//                         left: 0,
//                       ),
//                       child: Assets.svg.deviceIcon.svg(width: 24, height: 24),
//                     ),
//                 errorBorder: border.copyWith(
//                   borderSide: BorderSide(
//                     color: AppColors.colorFF3B30,
//                     width: 2,
//                   ),
//                 ),
//                 focusedErrorBorder: border.copyWith(
//                   borderSide: BorderSide(
//                     width: 2,
//                     color: AppColors.colorFF3B30,
//                   ),
//                 ),
//                 border: border,
//                 focusedBorder: border,
//                 enabledBorder: border,

//                 contentPadding: const EdgeInsets.fromLTRB(0, 20, 25, 20),
//               ),
//               onChanged: (phone) {
//                 if (widget.onChanged != null) {
//                   widget.onChanged!(phone.completeNumber);
//                 }
//               },
//               validator: widget.validator,
//               autovalidateMode:
//                   widget.autovalidateMode ?? AutovalidateMode.disabled,
//             ),
//           ),
//         ),
//         if (widget.labelText != null)
//           Positioned(
//             top: 0,
//             left: 15,
//             child: Container(
//               height: 25,
//               decoration: const BoxDecoration(color: AppColors.white),
//               padding: const EdgeInsets.symmetric(horizontal: 6),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(widget.labelText ?? '', style: labelStyle),
//                   const SizedBox(width: 3),
//                   Text(
//                     "*",
//                     style: labelStyle.copyWith(color: AppColors.colorFF5630),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
