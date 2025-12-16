import 'package:sallihli/core/networking/api_error_handler.dart';
import 'package:sallihli/core/networking/api_result.dart';
import 'package:sallihli/core/networking/api_service.dart';
import 'package:sallihli/features/Client_Home/data/local/local.dart';
import 'package:sallihli/features/Client_Home/data/model/model.dart';

class Repo {
  final ApiService _apiService;
  final Local _local;

  Repo(ApiService apiService, this._local) : _apiService = apiService;

   Future<ApiResult<List<Model>>> getModel(
    String categoryId,
  ) async {
    try {
      final response = await _apiService.getModel();
      await _local.saveArticles(response, categoryId);
      return ApiResult.success(response);
    } catch (e) {
      final cached = await _local.getCachedArticles(categoryId);
      if (cached.isNotEmpty) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
