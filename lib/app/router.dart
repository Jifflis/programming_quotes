import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../view/features/qoutes_overview/page_quotes.dart';
import '../view/features/quote_details/page_qoute.dart';
import '../view/widgets/page_initial_wrapper.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute<AutoRoute>(
    path: '/',
    page: PageInitialWrapper,
    initial: true,
    children: [
      AutoRoute<AutoRoute>(
        path: 'quotes',
        page: PageQuotes,
        initial: true,
      ),
      AutoRoute<AutoRoute>(
        path: 'quote',
        page: PageQuote,
      ),
    ],
  ),
])
class $AppRouter {}
