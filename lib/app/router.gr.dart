// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/annotations.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:programming_quotes/data/models/model_quote.dart' as _i7;
import 'package:programming_quotes/view/features/qoutes_overview/page_quotes.dart'
    as _i2;
import 'package:programming_quotes/view/features/quote_details/page_qoute.dart'
    as _i3;
import 'package:programming_quotes/view/widgets/page_initial_wrapper.dart'
    as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PageInitialWrapperRoute.name: (routeData) {
      return _i4.AdaptivePage<_i6.AutoRoute<dynamic>>(
        routeData: routeData,
        child: const _i1.PageInitialWrapper(),
      );
    },
    PageQuotesRoute.name: (routeData) {
      return _i4.AdaptivePage<_i6.AutoRoute<dynamic>>(
        routeData: routeData,
        child: const _i2.PageQuotes(),
      );
    },
    PageQuoteRoute.name: (routeData) {
      final args = routeData.argsAs<PageQuoteRouteArgs>();
      return _i4.AdaptivePage<_i6.AutoRoute<dynamic>>(
        routeData: routeData,
        child: _i3.PageQuote(
          quote: args.quote,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          PageInitialWrapperRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              '#redirect',
              path: '',
              parent: PageInitialWrapperRoute.name,
              redirectTo: 'quotes',
              fullMatch: true,
            ),
            _i4.RouteConfig(
              PageQuotesRoute.name,
              path: 'quotes',
              parent: PageInitialWrapperRoute.name,
            ),
            _i4.RouteConfig(
              PageQuoteRoute.name,
              path: 'quote',
              parent: PageInitialWrapperRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.PageInitialWrapper]
class PageInitialWrapperRoute extends _i4.PageRouteInfo<void> {
  const PageInitialWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PageInitialWrapperRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'PageInitialWrapperRoute';
}

/// generated route for
/// [_i2.PageQuotes]
class PageQuotesRoute extends _i4.PageRouteInfo<void> {
  const PageQuotesRoute()
      : super(
          PageQuotesRoute.name,
          path: 'quotes',
        );

  static const String name = 'PageQuotesRoute';
}

/// generated route for
/// [_i3.PageQuote]
class PageQuoteRoute extends _i4.PageRouteInfo<PageQuoteRouteArgs> {
  PageQuoteRoute({
    required _i7.ModelQuote quote,
    _i5.Key? key,
  }) : super(
          PageQuoteRoute.name,
          path: 'quote',
          args: PageQuoteRouteArgs(
            quote: quote,
            key: key,
          ),
        );

  static const String name = 'PageQuoteRoute';
}

class PageQuoteRouteArgs {
  const PageQuoteRouteArgs({
    required this.quote,
    this.key,
  });

  final _i7.ModelQuote quote;

  final _i5.Key? key;

  @override
  String toString() {
    return 'PageQuoteRouteArgs{quote: $quote, key: $key}';
  }
}
