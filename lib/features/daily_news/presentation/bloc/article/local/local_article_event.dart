import 'package:equatable/equatable.dart';

import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class LocalArticlesEvent extends Equatable {
  final ArticleEntity? article;
  const LocalArticlesEvent({
    this.article,
  });

  @override
  List<Object> get props => [article!];
}

class GetSavedArticles extends LocalArticlesEvent {
  const GetSavedArticles();
}

class SaveArticle extends LocalArticlesEvent {
  const SaveArticle(ArticleEntity entity) : super(article: entity);
}

class RemoveArticle extends LocalArticlesEvent {
   const RemoveArticle(ArticleEntity article) : super(article: article);
}

