import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:base_template/src/features/presentation.dart';
import 'package:base_template/src/routes/routes.dart';

enum Routes {
  /// [TODO]
  /// tambahkan  nama halaman disini
  /// Example : login, home, detail
  splash
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      urlPathStrategy: UrlPathStrategy.path,
      initialLocation: '/',
      routerNeglect: true,
      routes: [
        GoRoute(
          path: '/',
          name: Routes.splash.name,
          builder: (context, state) => const SplashPage(),
        ),

        /// [TODO]
        /// tambahkan halaman disini
        /// example
        ///  GoRoute(
        //   path: '/home',
        //   name: Routes.home.name,
        //   builder: (context, state) => const HomePage(),
        // ),
      ],
      errorBuilder: (context, state) => ErrorPage(
        error: state.error,
      ),
    );
  },
);
