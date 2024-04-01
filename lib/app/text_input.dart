// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputs extends StatefulWidget {
  TextEditingController? textEditingController;
  String label;
  String identifier;
  String value = '';
  bool? isLabelFloating;
  bool? isPassword;
  bool? isSearch;
  bool? isAsterisk;
  Color? mainTextColor;
  double? height;
  AutovalidateMode? autoValidateMode;
  List<TextInputFormatter>? inputFormatters;
  TextInputType? textInputType;
  FocusNode? focusNode;
  bool? showHints;
  VoidCallback? showHintsAction;
  Function(String value)? textChangedEvent;
  Function() nextFocus;
  bool? isEditable;
  TextInputs({
    Key? key,
    this.textEditingController,
    this.isPassword,
    this.isAsterisk,
    this.isLabelFloating,
    this.textInputType,
    this.showHints,
    this.showHintsAction,
    this.inputFormatters,
    this.textChangedEvent,
    this.isSearch,
    this.mainTextColor,
    this.height,
    this.autoValidateMode,
    required this.nextFocus,
    required this.focusNode,
    required this.label,
    required this.identifier,
    this.isEditable,
  }) : super(key: key);
  TextEditingController get controller =>
      textEditingController ??= TextEditingController();
  @override
  TextInputsState createState() => TextInputsState();
}

class TextInputsState extends State<TextInputs> {
  bool showError = false;
  bool hidePassword = true;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode != null) {
      widget.focusNode!.addListener(() {
        (widget.focusNode!.hasFocus)
            ? [
                if (widget.showHints == true)
                  {FocusScope.of(context).unfocus(), widget.showHintsAction!()},
                if (mounted)
                  setState(() {
                    showError = false;
                  })
              ]
            : [
                if (mounted)
                  setState(() {
                    showError = false;
                  })
              ];
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        enabled: widget.isEditable ?? true,
        key: Key(widget.identifier),
        focusNode: widget.focusNode ?? widget.focusNode,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: const OutlineInputBorder(),
          disabledBorder: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(),
          isDense: true,
          suffixIcon: widget.isPassword == true
              ? hidePassword
                  ? InkWell(
                      onTap: () => setState(() {
                            hidePassword = false;
                          }),
                      child: const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.black,
                        size: 20,
                      ))
                  : InkWell(
                      onTap: () => setState(() {
                            hidePassword = true;
                          }),
                      child: const Icon(
                        Icons.visibility_outlined,
                        color: Colors.black,
                        size: 20,
                      ))
              : /*widget.isSearch == true
                  ? const Icon(
                      Icons.search,
                      color: AppColors.mainTextColor,
                      size: 20,
                    )
                  : */
              null,
          errorMaxLines: 2,
        ),
        controller: widget.controller,
        keyboardType: widget.textInputType,
        inputFormatters: widget.inputFormatters,
        textInputAction: TextInputAction.done,
        obscureText: widget.isPassword == true && hidePassword,
        onChanged: (text) => {
          setState(() {
            widget.value = text;
            showError = false;
          }),
          if (widget.isSearch == true) {widget.textChangedEvent!(text)}
        },
        autovalidateMode:
            widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
        onFieldSubmitted: (text) => {
          setState(() {
            showError = true;
          }),
          widget.nextFocus()
        },
      ),
    );
  }
}
