import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:sallihli/core/cache/cache_config.dart';
import 'package:sallihli/features/Client_Home/data/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Local {
  static const _cacheKeyPrefix = 'cached_articles_';

  /// 🧩 حفظ المقالات في الكاش حسب التصنيف مع timestamp
  Future<void> saveArticles(
    List<Model> articles,
    String categoryId,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    final cacheData = {
      "timestamp": DateTime.now().millisecondsSinceEpoch,
      "data": articles.map((e) => e.toJson()).toList(),
    };

    await prefs.setString(_cacheKeyPrefix + categoryId, jsonEncode(cacheData));
  }

  /// 📦 استرجاع المقالات من الكاش مع التحقق من الصلاحية
  Future<List<Model>> getCachedArticles(String categoryId) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_cacheKeyPrefix + categoryId);

    if (jsonString == null) return [];

    try {
      final decoded = jsonDecode(jsonString);
      final timestamp = decoded['timestamp'] ?? 0;
      final List<dynamic> data = decoded['data'] ?? [];

      /// ⏳ فحص انتهاء الكاش حسب النوع (Model)
      final cacheDuration = CacheConfig.getDuration(CacheType.article);
      final isExpired = DateTime.now().millisecondsSinceEpoch - timestamp >
          cacheDuration.inMilliseconds;

      if (isExpired) {
        await clearCache(categoryId);
        debugPrint('🕒 Article cache expired for $categoryId — cleared.');
        return [];
      }

      return data.map((e) => Model.fromJson(e)).toList();
    } catch (e) {
      debugPrint('❌ Error reading cached articles: $e');
      return [];
    }
  }

  /// 🗑️ حذف كاش تصنيف محدد
  Future<void> clearCache(String categoryId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cacheKeyPrefix + categoryId);
  }

  /// 🧹 حذف جميع المقالات المخزنة في الكاش
  Future<void> clearAllCaches() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys().where((key) => key.startsWith(_cacheKeyPrefix));
    for (final key in keys) {
      await prefs.remove(key);
    }
  }
}