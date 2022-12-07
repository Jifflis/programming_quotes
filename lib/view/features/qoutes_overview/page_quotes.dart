import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programming_quotes/app/router.gr.dart';

import '../../../generated/l10n.dart';
import '../../widgets/custom_loading.dart';
import '../../widgets/try_again.dart';
import 'bloc/quotes_overview_bloc.dart';

class PageQuotes extends StatelessWidget {
  const PageQuotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final string = S.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(string.list_of_quotes)),
      body: BlocBuilder<QuotesOverviewBloc, QuotesOverviewState>(builder: (context, state) {
        final quotesOverviewBloc = context.read<QuotesOverviewBloc>();

        if (state.status == QuotesOverviewStatus.failure) {
          return TryAgain(
            onTap: () => quotesOverviewBloc.add(const QuotesSubscriptionRequested()),
          );
        }

        return Stack(
          children: [
            ListView.separated(
              itemCount: state.quotes.length,
              itemBuilder: (context, i) {
                final quote = state.quotes[i];
                return InkWell(
                  onTap: () => context.router.push(PageQuoteRoute(quote: quote)),
                  child: ListTile(
                    minLeadingWidth: 2,
                    leading: Text('${i + 1}.'),
                    title: Text(quote.content.trim()),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text('- ${quote.author}'),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 0.5,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
            if (state.status == QuotesOverviewStatus.loading)
              const SizedBox(width: double.infinity, child: CustomLoading(width: 50, height: 50))
          ],
        );
      }),
    );
  }
}
