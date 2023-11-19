import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:store/provider/auth_provider.dart';
import 'package:store/provider/side_menu_provider.dart';
import 'package:store/router/router_manager.dart';
import 'package:store/ui/views/auth/login_view.dart';
import 'package:store/ui/views/dashboard/users/users_list_view.dart';

class UsersHandlers {
  static Handler list = Handler(handlerFunc: (context, params) {
    final authProvider = Provider.of<AuthProvider>(context!);

    if (authProvider.authStatus == AuthStatus.authenticated) {
      Provider.of<SideMenuProvider>(context, listen: false)
          .setCurrentPageUrl(RouterManager.usersListRoute);
      return const UsersListView();
    } else {
      return const LoginView();
    }
  });
}