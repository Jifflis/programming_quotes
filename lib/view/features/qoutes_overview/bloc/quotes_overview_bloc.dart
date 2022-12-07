import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:programming_quotes/data/models/model_quote.dart';
import 'package:programming_quotes/domain/repository_quotes.dart';

part 'quotes_overview_bloc.freezed.dart';

part 'quotes_overview_event.dart';

part 'quotes_overview_state.dart';

class QuotesOverviewBloc extends Bloc<QuotesOverviewEvent, QuotesOverviewState> {
  QuotesOverviewBloc({required RepositoryQuotes repositoryQuotes})
      : _repositoryQuotes = repositoryQuotes,
        super(QuotesOverviewState.initialize()) {
    on<QuotesOverviewEvent>(_mapEvent);
  }

  final RepositoryQuotes _repositoryQuotes;

  Future<void> _mapEvent(
    QuotesOverviewEvent event,
    Emitter<QuotesOverviewState> emit,
  ) async {
    await event.map(
      quotesSubscriptionRequested: (event) => _onSubscriptionRequested(event, emit),
      quotesOverviewUpdated: (event) => _onQuotesOverviewUpdated(event, emit),
      quotesOverviewDeleted: (event) => _onQuotesOverviewDeleted(event, emit),
    );
  }

  Future<void> _onSubscriptionRequested(
    QuotesSubscriptionRequested event,
    Emitter<QuotesOverviewState> emit,
  ) async {
    emit(state.copyWith(status: QuotesOverviewStatus.loading));
    await emit.forEach<List<ModelQuote>>(
      _repositoryQuotes.getQuotes(),
      onData: (quotes) => state.copyWith(
        status: QuotesOverviewStatus.success,
        quotes: quotes,
      ),
      onError: (_, __) => state.copyWith(
        status: QuotesOverviewStatus.failure,
      ),
    );
  }

  Future<void> _onQuotesOverviewDeleted(
    QuotesOverviewDeleted event,
    Emitter<QuotesOverviewState> emit,
  ) async {
    emit(state.copyWith(status: QuotesOverviewStatus.loading));
    await _repositoryQuotes.deleteQuote(event.id);
  }

  Future<void> _onQuotesOverviewUpdated(
    QuotesOverviewUpdated event,
    Emitter<QuotesOverviewState> emit,
  ) async {
    emit(state.copyWith(status: QuotesOverviewStatus.loading));
    await _repositoryQuotes.updateQuote(event.quote);
  }
}
