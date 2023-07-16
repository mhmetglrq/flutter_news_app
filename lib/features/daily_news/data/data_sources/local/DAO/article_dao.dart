import 'package:floor/floor.dart';

import '../../../models/article.dart';

@dao
abstract class ArticleDao {
  @Insert()
  Future<void> insertArticle(ArticleModel model);

  @delete
  Future<void> deleteArticle(ArticleModel model);

  @Query('SELECT * FROM article')
  Future<List<ArticleModel>> getArticles();


}
