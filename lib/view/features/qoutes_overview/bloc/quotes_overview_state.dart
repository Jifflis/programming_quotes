part of 'quotes_overview_bloc.dart';

enum QuotesOverviewStatus { initial, loading, success, failure }

@freezed
class QuotesOverviewState with _$QuotesOverviewState {
  factory QuotesOverviewState({
    @Default(QuotesOverviewStatus.initial) QuotesOverviewStatus status,
    @Default([]) List<ModelQuote> quotes,
  }) = _QuotesOverviewState;

  factory QuotesOverviewState.initialize() => QuotesOverviewState();
}
