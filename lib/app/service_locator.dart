import 'dart:core';

import 'package:get_it/get_it.dart';
import 'package:programming_quotes/data/http_service.dart';
import 'package:programming_quotes/domain/repository_quotes.dart';

import '../data/quotes_api/api_rest_quotes.dart';

final locator = GetIt.instance;

Future<void> registerServiceLocator() async {
  locator.registerSingleton<HttpService>(HttpService());

  locator.registerSingleton<RepositoryQuotes>(
      RepositoryQuotes(apiQuotes: ApiRestQuotes(httpService: locator<HttpService>())));
}
