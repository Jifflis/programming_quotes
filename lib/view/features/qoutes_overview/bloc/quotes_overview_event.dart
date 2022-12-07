part of 'quotes_overview_bloc.dart';

@freezed
class QuotesOverviewEvent with _$QuotesOverviewEvent {
  const factory QuotesOverviewEvent.quotesSubscriptionRequested() = QuotesSubscriptionRequested;
  const factory QuotesOverviewEvent.quotesOverviewUpdated(ModelQuote quote) = QuotesOverviewUpdated;
  const factory QuotesOverviewEvent.quotesOverviewDeleted(String id) = QuotesOverviewDeleted;
}
