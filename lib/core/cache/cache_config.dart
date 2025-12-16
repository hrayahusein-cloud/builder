enum CacheType { article, category, liveTv }

class CacheConfig {
  static Duration getDuration(CacheType type) {
    switch (type) {
      case CacheType.article:
        return const Duration(hours: 6);
      case CacheType.category:
        return const Duration(hours: 12);
      case CacheType.liveTv:
        return const Duration(minutes: 30);
    }
  }
}
