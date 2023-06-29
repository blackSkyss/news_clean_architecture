import '../../../../../util/constants/nums.dart';
import '../../../../../util/constants/strings.dart';

class BreakingNewsRequest {
  BreakingNewsRequest({
    this.apiKey = defaultApiKey,
    this.country = countryQuery,
    this.category = categoryQuery,
    this.page = 1,
    this.pageSize = defaultPageSize,
  });

  final String apiKey;
  final String category;
  final String country;
  final int page;
  final int pageSize;
}
