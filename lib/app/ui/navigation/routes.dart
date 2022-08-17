import 'package:fimex/app/domain/providers/menu_state.dart';
import 'package:fimex/app/domain/providers/profile_state.dart';
import 'package:fimex/app/ui/screens/index.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart' hide TransitionPage;

import 'transition_page.dart';

const _pin = '/';
const _login = '/login';
const _tabbar = '/';
const _home = '/home';
const _profile = '/profile';
const _cart = '/cart';
const _menu = '/menu';
const _brands = '$_home/brands';
const _catalog = '$_brands/catalog';
const _product = '$_catalog/product';
const _homeProduct = '$_home/product';
const _profileLikes = '$_profile/likes';
const _profileLikeProduct = '$_profileLikes/product';
const _orderInfo = '$_profile/orders';

abstract class AppRoutes {
  static String get pin => _pin;
  static String get login => _login;
  static String get home => _home;
  static String get tabbar => _tabbar;
  static String get brands => _brands;
  static String get catalog => _catalog;
  static String get product => _product;
  static String get homeProduct => _homeProduct;
  static String get cart => _cart;
  static String get profile => _profile;
  static String get profileLikes => _profileLikes;
  static String get profileLikeProduct => _profileLikeProduct;
  static String get menu => _menu;
  static String get orderInfo => _orderInfo;
}

final loggedOutMap = RouteMap(
  onUnknownRoute: (_) => const Redirect(_pin),
  routes: {
    _pin: (_) => const TransitionPage(child: PincodeScreen()),
    _login: (_) => const TransitionPage(child: LoginScreen()),
  },
);

final loggedInMap = RouteMap(
  onUnknownRoute: (_) => const Redirect(_tabbar),
  routes: {
    _tabbar: (_) => const TabPage(
          child: TabBarScreen(),
          paths: [_home, _profile, _cart, _menu],
        ),
    _home: (_) => const TransitionPage(child: HomeScreen()),
    _cart: (_) => const TransitionPage(child: CartScreen()),
    _profile: (_) => TransitionPage(
          child: ChangeNotifierProvider(
            create: (_) => ProfileState(),
            child: const ProfileScreen(),
          ),
        ),
    _menu: (_) => TransitionPage(
          child: ChangeNotifierProvider(
            create: (_) => MenuState(),
            child: const MenuScreen(),
          ),
        ),
    _brands: (_) => const TransitionPage(child: BrandsScreen()),
    _catalog: (_) => const TransitionPage(child: CatalogScreen()),
    _product: (_) => const TransitionPage(child: ProductScreen()),
    _homeProduct: (_) => const TransitionPage(child: ProductScreen()),
    _orderInfo: (info) => const TransitionPage(child: CartScreen()),
    _profileLikeProduct: (info) => const TransitionPage(child: ProductScreen()),
  },
);
