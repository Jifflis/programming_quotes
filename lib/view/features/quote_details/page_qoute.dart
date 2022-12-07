import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programming_quotes/data/models/model_quote.dart';
import 'package:programming_quotes/view/dialogs/dialog_quote_update.dart';

import '../../../generated/l10n.dart';
import '../qoutes_overview/bloc/quotes_overview_bloc.dart';

class PageQuote extends StatefulWidget {
  const PageQuote({required this.quote, Key? key}) : super(key: key);
  final ModelQuote quote;

  @override
  State<PageQuote> createState() => _PageQuoteState();
}

class _PageQuoteState extends State<PageQuote> {
  late ModelQuote _quote;

  Future<void> _updateFn(BuildContext context, String text) async {
    final quoteOverviewBloc = context.read<QuotesOverviewBloc>();

    final result = await showDialogUpdateQuote(context, text: text);

    if (result is String && result.isNotEmpty) {
      _quote = _quote.copyWith(content: result);
      quoteOverviewBloc.add(QuotesOverviewUpdated(_quote));
      setState(() {});
    }
  }

  void _deleteFn(BuildContext context, String id) {
    context.read<QuotesOverviewBloc>().add(QuotesOverviewDeleted(id));
    context.router.pop();
  }

  @override
  void initState() {
    _quote = widget.quote;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final string = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(string.quote, textAlign: TextAlign.center),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Text(_quote.content)),
          const SizedBox(height: 8),
          Text('-${_quote.author}'),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => _updateFn(context, _quote.content),
                child: Text(string.edit),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () => _deleteFn(context, _quote.id),
                child: Text(string.delete),
              ),
            ],
          )
        ],
      ),
    );
  }
}
