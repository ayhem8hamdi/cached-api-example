import 'package:caching/core/services/dependency_injection.dart';
import 'package:caching/core/theme/theme_data/app_theme.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:caching/feature/home/domain/repos/product_repostry.dart';
import 'package:caching/feature/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:caching/feature/home/presentation/views/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>(kProductBoxName);
  setup();
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getIt<ProductRepostry>())..fetchProducts(),
      child: MaterialApp(
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
