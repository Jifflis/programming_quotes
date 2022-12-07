import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/service_locator.dart';
import '../../domain/repository_quotes.dart';
import '../features/qoutes_overview/bloc/quotes_overview_bloc.dart';

class PageInitialWrapper extends StatelessWidget {
  const PageInitialWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => QuotesOverviewBloc(repositoryQuotes: locator<RepositoryQuotes>())
            ..add(const QuotesSubscriptionRequested()),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
