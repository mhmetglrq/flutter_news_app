import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewArticles();

  //DB
  Future<List<ArticleEntity>> getSavedArticles();
  Future<void> saveArticle(ArticleEntity article);
  Future<void> removeArticle(ArticleEntity article);
}
