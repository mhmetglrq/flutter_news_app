import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/config/theme/app_themes.dart';
import 'package:flutter_clean_architecture/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:flutter_clean_architecture/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:flutter_clean_architecture/injection_container.dart';

import 'features/daily_news/presentation/pages/home/daily_news.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: const DailyNews(),
      ),
    );
  }
}
