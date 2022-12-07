import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

Future<dynamic> showDialogUpdateQuote(BuildContext context, {String text = ''}) {
  return showDialog(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          constraints: const BoxConstraints(
              maxWidth: 300, minHeight: 100, minWidth: 100, maxHeight: double.infinity),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DialogUpdateQuote(
            defaultText: text,
          ),
        ),
      );
    },
  );
}

class DialogUpdateQuote extends StatefulWidget {
  const DialogUpdateQuote({this.defaultText = '', Key? key}) : super(key: key);

  final String defaultText;

  @override
  State<DialogUpdateQuote> createState() => _DialogUpdateQuoteState();
}

class _DialogUpdateQuoteState extends State<DialogUpdateQuote> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.text = widget.defaultText;
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final string = S.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: TextField(
              controller: _textEditingController,
              maxLines: 5,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                border: InputBorder.none,
              ),
            )),
        const SizedBox(height: 16),
        TextButton(
            onPressed: () {
              Navigator.pop(context, _textEditingController.text);
            },
            child: Text(string.update)),
      ],
    );
  }
}
