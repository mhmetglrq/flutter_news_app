import 'package:floor/floor.dart';

import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';

import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
import 'DAO/article_dao.dart';
part 'app_database.g.dart';

@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase {
  ArticleDao get articleDAO;
}
